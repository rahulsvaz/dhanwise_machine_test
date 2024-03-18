import 'package:flutter/material.dart';

class TopTextField extends StatelessWidget {
  const TopTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(241, 240, 244, 1),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        style: const TextStyle(color: Colors.grey),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          suffix: Container(
            margin: const EdgeInsets.only(right: 10),
            width: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.search),
                Icon(
                  Icons.mic,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          hintText: 'Search For Biriyani',
          hintStyle: const TextStyle(color: Colors.grey),
          border: border(),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    );
  }
}
