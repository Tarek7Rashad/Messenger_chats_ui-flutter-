import 'dart:ui';

import 'package:chat_ui/Widgets/ChatsSliverList.dart';
import 'package:chat_ui/Widgets/OpenedUsersListView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        selectedFontSize: 20,
        unselectedIconTheme: const IconThemeData(size: 30),
        unselectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Stack(clipBehavior: Clip.none, children: [
              const Icon(
                Icons.chat_bubble,
                size: 30,
              ),
              Positioned(
                top: -7,
                right: -7,
                child: Container(
                  alignment: Alignment.center,
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: const Text(
                    '3',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              )
            ]),
            label: "chats",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Stack(clipBehavior: Clip.none, children: [
              const Icon(
                Icons.videocam_rounded,
                size: 30,
              ),
              Positioned(
                top: -7,
                right: -7,
                child: Container(
                  alignment: Alignment.center,
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: const Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              )
            ]),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Stack(clipBehavior: Clip.none, children: [
              const Icon(
                Icons.people_alt_rounded,
                size: 30,
              ),
              Positioned(
                top: -7,
                right: -7,
                child: Container(
                  alignment: Alignment.center,
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  child: const Text(
                    '',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              )
            ]),
            label: "People",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Stack(clipBehavior: Clip.none, children: [
              const Icon(
                Icons.amp_stories_rounded,
                size: 30,
              ),
              Positioned(
                top: -7,
                right: -7,
                child: Container(
                  alignment: Alignment.center,
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: const Text(
                    '',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              )
            ]),
            label: "Stories",
          ),
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.blueAccent,
                size: 30,
              )),
          title: const Text(
            "Chats",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_note_rounded,
                  size: 30,
                  color: Colors.blueAccent,
                ))

            // CircleAvatar(
            //   backgroundColor: Colors.grey.withOpacity(0.1),
            //   child: const Icon(
            //     Icons.camera_alt_sharp,
            //     color: Colors.black,
            //   ),
            // ),
            // const SizedBox(
            //   width: 10,
            // ),
            // CircleAvatar(
            //   backgroundColor: Colors.grey.withOpacity(0.1),
            //   child: const Icon(
            //     Icons.edit,
            //     color: Colors.black,
            //   ),
            // )
          ]),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 7),
                        constraints: const BoxConstraints(maxHeight: 40),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.grey,
                        hintText: "Search",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: OpenedUsersListView(),
          ),
          const ChatsSliverList(),
        ],
      ),
    );
  }
}
