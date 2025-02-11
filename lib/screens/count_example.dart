import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_practice/provider/count_provider.dart';
import '../provider/count_provider.dart';
import 'package:flutter/foundation.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final CountProvider = Provider.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Consumer(builder: (context, value, child) {
            return Text(
              CountProvider.count.toString(),
              style: TextStyle(fontSize: 50, color: Colors.brown),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {
          CountProvider.setCount();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
