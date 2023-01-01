import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF54ca95),
      child: ListView(
        children: const [
          ListTile(
            title: Text("About Me",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: Text("Skills",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: Text("Work History",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: Text("Drawings",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: Text("Contact",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          )
        ],
      ),
    );
  }
}
