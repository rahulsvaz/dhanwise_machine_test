import 'package:dhanwise_machine_test/features/Homepage/view/widgets/location_bar.dart';
import 'package:dhanwise_machine_test/features/Homepage/view/widgets/text_field.dart';
import 'package:flutter/material.dart';

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
        children: const [
          LocationBar(),
          SizedBox(
            height: 10,
          ),
          TopTextField(),
          SizedBox(
            height: 10,
          ),
          BannerImage()
        ],
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/banner.jpeg',
      width: double.infinity,
      fit: BoxFit.cover,
      height: 120,
    );
  }
}
