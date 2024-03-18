import 'package:dhanwise_machine_test/features/Homepage/view/widgets/rounded_scrollable.dart';
import 'package:flutter/material.dart';

class ScrollableRoundedFood extends StatelessWidget {
  const ScrollableRoundedFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         RoundedScrollFoodItems(), RoundedScrollFoodItems(),
      ],
    );
  }
}

