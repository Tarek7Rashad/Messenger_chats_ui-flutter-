import 'package:chat_ui/Models/OpenedUserModel.dart';
import 'package:flutter/material.dart';

class OpenedUsers extends StatelessWidget {
  const OpenedUsers({super.key, required this.openedUserModel});
  final OpenedUserModel openedUserModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.bottomRight, children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage(openedUserModel.avatarImage),
          ),
          const CircleAvatar(
            radius: 10,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.circle_sharp,
              size: 17,
              color: Color.fromARGB(255, 35, 229, 5),
            ),
          ),
          /***************************** */
          // Positioned(
          //   bottom: 1,
          //   right: 1,
          //   child: Container(
          //     alignment: Alignment.center,
          //     width: 27,
          //     height: 27,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.circular(50),
          //       border: Border.all(width: 5, color: Colors.black),
          //     ),
          //   ),
          // ),
        ]),
        const SizedBox(
          height: 20,
        ),
        Text(
          openedUserModel.username,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
