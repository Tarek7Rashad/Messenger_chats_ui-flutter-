import 'package:flutter/material.dart';

class OpenedUserModel {
  final String username;
  final String avatarImage;
  final CircleAvatar leadingImage;

  const OpenedUserModel(
      {required this.leadingImage,
      required this.username,
      required this.avatarImage});
}
