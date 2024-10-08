import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/homepage.dart'; // Importing the HomePage widget

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingPageState();
}



class _SettingPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah ke Home Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage(); 
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
