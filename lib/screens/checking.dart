import 'package:flutter/material.dart';

class Checking extends StatefulWidget {
  const Checking({super.key});

  @override
  State<Checking> createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {
  @override
  Widget build(BuildContext context) {
    int num = 50;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                child: Text('$num')),
          ),
        ],
      ),
    );
  }
}
