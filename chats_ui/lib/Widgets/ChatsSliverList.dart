import 'package:chat_ui/Models/ChatsModel.dart';
import 'package:chat_ui/Widgets/ChatsWidget.dart';
import 'package:flutter/material.dart';

class ChatsSliverList extends StatelessWidget {
  const ChatsSliverList({super.key});
  final List<ChatsModel> Chats = const [
    ChatsModel(
      username: "Tarek Rashad",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user1.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user1.jpeg'),
      ),
    ),
    ChatsModel(
      username: "عبد الرحيم طارق",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user4.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    ChatsModel(
      username: "Odi Tarek",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user3.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user3.jpeg'),
      ),
    ),
    ChatsModel(
      username: "وعد محمد",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user20.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.transparent),
    ),
    ChatsModel(
      username: "ايمن على",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user5.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user5.jpeg'),
      ),
    ),
    ChatsModel(
      username: "Aya Mahmoud",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user6.jpeg',
      leadingImage: CircleAvatar(
        backgroundColor: Colors.transparent,
      ),
    ),
    ChatsModel(
      username: "محمد محمود",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user7.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    ChatsModel(
      username: "حسن طارق",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user8.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user8.jpeg'),
      ),
    ),
    ChatsModel(
      username: "Wael Mohamed",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user9.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    ChatsModel(
      username: "ايمن على",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user10.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.transparent),
    ),
    ChatsModel(
      username: "Esraa Gaber",
      subtitle: "You: last message . date",
      avatarImage: 'assets/images/user11.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user11.jpeg'),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: Chats.length,
      itemBuilder: (context, index) {
        return ChatsWidget(chatsModel: Chats[index]);
      },
    );
  }
}
