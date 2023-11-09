import 'package:chat_ui/Models/ChatsModel.dart';
import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({
    super.key,
    required this.chatsModel,
  });
  final ChatsModel chatsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(chatsModel.avatarImage),
              ),
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatsModel.username,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    chatsModel.subtitle,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 8,
                child: chatsModel.leadingImage,
              )
            ],
          ),
        ],
      ),
    );
  }
}
