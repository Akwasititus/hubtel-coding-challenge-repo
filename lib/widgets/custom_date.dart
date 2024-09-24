import 'package:flutter/material.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 50,
        width: 150,
        decoration:  BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: const Center(
            child: Text("May 24, 2022", style: TextStyle(fontSize: 20))));
  }
}