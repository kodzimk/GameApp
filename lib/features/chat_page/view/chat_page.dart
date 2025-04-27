import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(id: "0",firstName: "User");
  List<ChatMessage> m = [];
  String? character = '';
  ChatUser geminiUser = ChatUser(id: '1',firstName: '');


  @override
  void didChangeDependencies(){
    final args = ModalRoute.of(context)?.settings.arguments;
    if(args == null)
    {
      log("You must provide args");
      return;
    }

    if(args is! String)
    {
       log("Provide string args");
       return;
    }

    setState(() {    
    character = args;
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
          "Chat with " + (character ?? ''),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Color.fromARGB(255, 40,40,40),
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
            gemini.chat([
            Content(parts: [
                    Part.text("Your are ${character} from Uncharted 4 : A Theif's End")],role: 'user'),
            Content(parts: [ 
                    Part.text(question)],  role: 'user'),
    ])
        .then((value) {
               ChatMessage? lastmessage = m.firstOrNull;
            if(lastmessage != null && lastmessage.user == geminiUser){
                lastmessage = m.removeAt(0);
                lastmessage.text += value?.output ?? "";
                setState(() {
                  m = [lastmessage!,...m];
                });
            }else{
              ChatMessage message = ChatMessage(user: geminiUser, createdAt: DateTime.now(),text: value?.output ?? "");
              setState(() {
                m = [message,...m];
              });
            }
    });
  }
}

