import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isToggleHistorySelected = true;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    showCircularProgressIndicator();
    super.initState();
  }

  void showCircularProgressIndicator() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading ?
            const Center(child: CircularProgressIndicator())
       : Column(
          children: [
            _tabBarToggle(),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Widget _tabBarToggle() {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isToggleHistorySelected = true;
              });
            },
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                  color: isToggleHistorySelected ? Colors.white : Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: Text(
                "History",
                style: TextStyle(
                    fontWeight: isToggleHistorySelected
                        ? FontWeight.w900
                        : FontWeight.normal,
                    fontSize: isToggleHistorySelected ? 25 : 20),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isToggleHistorySelected = false;
              });
            },
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  color: !isToggleHistorySelected ? Colors.white : Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: Text(
                "Transaction Summary",
                style: TextStyle(
                    fontWeight: !isToggleHistorySelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
