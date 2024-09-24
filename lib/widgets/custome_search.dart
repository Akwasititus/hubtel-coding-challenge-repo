import 'package:flutter/material.dart';

class CustomnSearch extends StatelessWidget {
  const CustomnSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 70,
      // width: double.infinity,
      decoration: BoxDecoration(
          color:   Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        children: [
          // Icon(Icons.search),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}