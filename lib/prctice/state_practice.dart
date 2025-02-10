import 'package:flutter/material.dart';

class StatePractice extends StatefulWidget {
  const StatePractice({super.key});

  @override
  State<StatePractice> createState() => _StatePracticeState();
}

int count = 0;

class _StatePracticeState extends State<StatePractice> {
  @override
  Widget build(BuildContext context) {
    print('build');
    //build kaka m wrsra print kgi jnb
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('State Management Practice')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
