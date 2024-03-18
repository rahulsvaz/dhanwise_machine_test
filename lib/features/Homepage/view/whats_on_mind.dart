import 'package:flutter/material.dart';

class WhatsOnMind extends StatefulWidget {
  const WhatsOnMind({super.key});

  @override
  State<WhatsOnMind> createState() => _WhatsOnMindState();
}

class _WhatsOnMindState extends State<WhatsOnMind> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: 
      EdgeInsets.only(left: 20),
      child: const Text(
        'Navitha whats on your mind ?',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
      ),
    );
  }
}
