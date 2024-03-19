import 'package:dhanwise_machine_test/features/Homepage/view/scrollable_rounded_food.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/whats_on_mind.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/explore_text.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/food_items_scrollable.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/location_bar.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/text_field.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/top_banner.dart';
import 'package:flutter/cupertino.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const LocationBar(),
            const TopTextField(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: const [
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
                   SizedBox(
                    height: 20,
                  ),
                   Explore(),
                  RestaurantList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantList extends StatelessWidget {
  const RestaurantList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/food_image.webp',
                          height: 250,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 180,
                      left: 10,
                      child: Text(
                        '50 % OFF',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 10,
                      child: Text(
                        'UpTo 100 rs',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Positioned(
                        top: 20,
                        left: 140,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 40,
                        ))
                  ],
                ),
                Container(
                  height: 250,
                  width: 220,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Restaurant Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 10,
                        child: Text(
                          '* 4.4 (5K+). 25 -30 mins ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 10,
                        child: Text(
                          'Seafood Chinese,Indian,k..',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        top: 123,
                        left: 10,
                        child: Text(
                          'SouthBazar . 0.9 km',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                          top: 160,
                          left: 30,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(),
                            onPressed: () {},
                            icon: Icon(Icons.mp_sharp),
                            label: Text(
                              'Free Delevery',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
