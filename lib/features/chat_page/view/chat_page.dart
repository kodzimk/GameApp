import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:uncharted/API/service_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser = ChatUser(id: '1');
  List<ChatMessage> m = [];
  String character = '';

  @override
  void didChangeDependencies() {
    setState(() {
      character = ModalRoute.of(context)?.settings.arguments as String;
      geminiUser = ChatUser(id: '1', firstName: character);
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Chat with $character",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
      ),

      //Chat itself
      body: DashChat(
        currentUser: currentUser,
        onSend: _sendMessage,
        messages: m,
      ),
    );
  }

  void _sendMessage(ChatMessage chatMessage) async {
    setState(() {
      m = [chatMessage, ...m];
    });
    await chatBot(character, chatMessage.text).then((value) {
      ChatMessage message = ChatMessage(
        user: geminiUser,
        createdAt: DateTime.now(),
        text: value ?? "",
      );
      setState(() {
        m = [message, ...m];
      });
    });
  }
}
