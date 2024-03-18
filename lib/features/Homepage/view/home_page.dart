import 'package:dhanwise_machine_test/features/Homepage/view/scrollable_rounded_food.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/whats_on_mind.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/explore_text.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/food_items_scrollable.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/location_bar.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/rounded_scrollable.dart';
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


      body: Material(
        elevation: 12,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [

            SizedBox(height: 40,),
             LocationBar(),
              TopTextField(),
            Expanded(
              child: ListView(
                
                padding: EdgeInsets.all(0),
                children: [
                 
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BannerImage(),
                  SizedBox(
                    height: 10,
                  ),
                  FoodItems(),
                  SizedBox(
                    height: 20,
                  ),
                  WhatsOnMind(),
                  ScrollableRoundedFood(),

                  SizedBox(height: 20,),
                  Explore(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
