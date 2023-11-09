import 'package:chat_ui/Models/OpenedUserModel.dart';
import 'package:chat_ui/Widgets/OpenedUsersWidget.dart';
import 'package:flutter/material.dart';

class OpenedUsersListView extends StatelessWidget {
  const OpenedUsersListView({super.key});
  final List<OpenedUserModel> openUsers = const [
    OpenedUserModel(
      username: "Odi Tarek",
      avatarImage: 'assets/images/user3.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user3.jpeg'),
      ),
    ),
    OpenedUserModel(
      username: "عبد الرحيم طارق",
      avatarImage: 'assets/images/user4.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    OpenedUserModel(
      username: "وعد محمد",
      avatarImage: 'assets/images/user20.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.transparent),
    ),
    OpenedUserModel(
      username: "Tarek Rashad",
      avatarImage: 'assets/images/user1.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user1.jpeg'),
      ),
    ),
    OpenedUserModel(
      username: "ايمن على",
      avatarImage: 'assets/images/user5.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user5.jpeg'),
      ),
    ),
    OpenedUserModel(
      username: "Aya Mahmoud",
      avatarImage: 'assets/images/user6.jpeg',
      leadingImage: CircleAvatar(
        backgroundColor: Colors.transparent,
      ),
    ),
    OpenedUserModel(
      username: "محمد محمود",
      avatarImage: 'assets/images/user7.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    OpenedUserModel(
      username: "حسن طارق",
      avatarImage: 'assets/images/user8.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user8.jpeg'),
      ),
    ),
    OpenedUserModel(
      username: "Wael Mohamed",
      avatarImage: 'assets/images/user9.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.blueAccent),
    ),
    OpenedUserModel(
      username: "ايمن على",
      avatarImage: 'assets/images/user10.jpeg',
      leadingImage: CircleAvatar(backgroundColor: Colors.transparent),
    ),
    OpenedUserModel(
      username: "Esraa Gaber",
      avatarImage: 'assets/images/user11.jpeg',
      leadingImage: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user11.jpeg'),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: openUsers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 30),
            child: OpenedUsers(openedUserModel: openUsers[index]),
          );
        },
      ),
    );
  }
}
