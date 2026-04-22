import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App"), backgroundColor: Colors.blueGrey),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Hello 63E",
                style: TextStyle(color: Colors.cyan, fontSize: 35),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.5),
              child: Text(
                "Welcome to our class",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),

            // New Row Added
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 10),
                Text("Flutter is Awesome"),
              ],
            ),

            Container(
              width: 300,
              height: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("User", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),

                  // Button Added
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Button Clicked!")),
                      );
                    },
                    child: Text("Click Me"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("FAB Clicked")));
        },
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Text("Menu", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HomePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
