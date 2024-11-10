import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // You can replace this with a logo or another widget
            Icon(
              Icons.home,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to My Member Link!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen (for example, New News screen)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewNewsScreen()),
                );
              },
              child: const Text("Go to New News Screen"),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FloatingActionButton press
          // For now, it can navigate to the New News screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewNewsScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NewNewsScreen extends StatelessWidget {
  const NewNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New News Screen"),
      ),
      body: const Center(
        child: Text("This is where new news will be added."),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
