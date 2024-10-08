import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/settings_page.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.imgur.com/ugVZjH2.jpeg'),
              ),
              accountName: Text("2 ORANG SAMA KONZ 1"),
              accountEmail: Text('rasyid123gamers@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/setting'); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            ElevatedButton(
              child: const Text('Pindah ke Setting Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/setting'); 
              },
            ),
            ElevatedButton(
              child: const Text('Pindah ke Account Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/account'); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
