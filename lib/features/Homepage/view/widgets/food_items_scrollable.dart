import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)),
                  height: 120,
                  width: 100,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/food_image.webp',
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Restaurant',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text('25-30 mins')
              ],
            ),
          );
        },
      ),
    );
  }
}
