
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/banner.jpg',
      width: double.infinity,
      fit: BoxFit.cover,
      height: 120,
    );
  }
}