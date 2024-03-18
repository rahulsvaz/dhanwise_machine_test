
import 'package:flutter/material.dart';

class RoundedScrollFoodItems extends StatelessWidget {
  const RoundedScrollFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(10)),
                  height: 120,
                  width: 100,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                         Radius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/images/food_image.webp',
                        fit: BoxFit.fill,
                      )),

                      
                ),

              const   SizedBox(height: 10,),

              Center(child: const   Text('Name'))
              
              ],
            ),
          );
        },
      ),
    );
  }
}