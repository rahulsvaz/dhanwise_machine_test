

import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: const Text('Restaurants to explore',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),));
  }
}