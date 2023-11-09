import 'package:chat_ui/Screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatUi());
}

class ChatUi extends StatelessWidget {
  const ChatUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
