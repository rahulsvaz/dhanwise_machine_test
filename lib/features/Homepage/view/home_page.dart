import 'package:dhanwise_machine_test/features/Homepage/view/widgets/food_items_scrollable.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/location_bar.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/text_field.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          LocationBar(),
          SizedBox(
            height: 10,
          ),
          TopTextField(),
          SizedBox(
            height: 10,
          ),
          BannerImage()
          ,
             SizedBox(
            height: 10,
          ),

          FoodItems(),
        
        ],
      ),
    );
  }
}

