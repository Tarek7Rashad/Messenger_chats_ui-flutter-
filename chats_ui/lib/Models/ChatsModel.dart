import 'package:flutter/material.dart';

class ChatsModel {
  final String username;
  final String subtitle;
  final String avatarImage;
  final CircleAvatar leadingImage;

  const ChatsModel(
      {required this.leadingImage,
      required this.username,
      required this.subtitle,
      required this.avatarImage});
}
