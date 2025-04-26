import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _nameState();
}

class _nameState extends State<ChatPage> {
  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(id: "0",firstName: "User");
  ChatUser geminiUser = ChatUser(id: "1",firstName: "Nathan");
  List<ChatMessage> m = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Chat with Nathan",
        ),
        backgroundColor: Color.fromARGB(255,105,86,80),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI()
  {
    return DashChat(currentUser: currentUser, onSend: _sendMessage, messages: m);
  }

  void _sendMessage(ChatMessage chatMessage){
       setState(() {
         m = [chatMessage, ...m];
       });
            String question = chatMessage.text;
            Gemini.instance.prompt(parts: [
            Part.text(question),
            ]).then((value) {
               ChatMessage? lastmessage = m.firstOrNull;
            if(lastmessage != null && lastmessage.user == geminiUser){
                lastmessage = m.removeAt(0);
                lastmessage.text +=  value?.output ?? "";
                setState(() {
                  m = [lastmessage!,...m];
                });
            }else{
              ChatMessage message = ChatMessage(user: geminiUser, createdAt: DateTime.now(),text: value?.output ?? "");
              setState(() {
                m = [message,...m];
              });
            }
              }).catchError((e) {
              print('error ${e}');
             });
  }
}

