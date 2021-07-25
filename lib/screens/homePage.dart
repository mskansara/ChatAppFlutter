import 'package:chat_app_ui/screens/chatPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            // ignore: deprecated_member_use
            title: Text("Chats")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            title: Text("Channels")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("Profile")
          )
        ],
      ),
    );
  }
}
