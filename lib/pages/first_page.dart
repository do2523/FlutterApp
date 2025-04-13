import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Docs")),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.star,
                size: 48
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              }
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              }
            )
      
          ]
        )
      ),
      // )
    );
    
  }
}