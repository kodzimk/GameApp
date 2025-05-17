import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ChatUser currentUser = ChatUser(id: "0",firstName: "User");
  ChatUser geminiUser = ChatUser(id: '1');
  List<ChatMessage> m = [];
  String character = '';

  @override
  void didChangeDependencies(){
    setState(() {    
      character = ModalRoute.of(context)?.settings.arguments as String;
      geminiUser =  ChatUser(id: '1',firstName: character);
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.white,
          ),
        title: Text(
          "Chat with $character",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Color.fromARGB(255, 40,40,40),
      ),
      body: DashChat(currentUser: currentUser, onSend: _sendMessage, messages: m),
    );
  }

  void _sendMessage(ChatMessage chatMessage){
       setState(() {
         m = [chatMessage, ...m];
        });
            Gemini.instance.chat([
            Content(parts: [
                    Part.text("Your are $character from Uncharted 4 : A Theif's End")],role: 'user'),
            Content(parts: [ 
                    Part.text(chatMessage.text)],  role: 'user'),
            ])
            .then((value) {
               ChatMessage? lastmessage = m.firstOrNull;
               if(lastmessage != null && lastmessage.user == geminiUser){
                  lastmessage.text += value as String ;
                  setState(() {
                   m = [lastmessage,...m];
                });
            }
               else{
                 ChatMessage message = ChatMessage(user: geminiUser, createdAt: DateTime.now(),text: value?.output ?? "");
                 setState(() {
                  m = [message,...m];
              });
            }
    });
  }
}

