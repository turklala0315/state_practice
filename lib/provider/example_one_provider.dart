import 'package:flutter/material.dart';
import 'package:state_practice/screens/example_one.dart';
import 'package:provider/provider.dart';

class ExampleOneProvider extends StatefulWidget {
  const ExampleOneProvider({super.key});

  @override
  State<ExampleOneProvider> createState() => _ExampleOneProviderState();
}

class _ExampleOneProviderState extends State<ExampleOneProvider> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOne>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'EXAMPLE ONE PROVIDER',
          style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Slider(
            value: provider.value,
            onChanged: (val) {
              value = val;
              setState(() {});
            }),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.green.withValues(green: value)),
                child: Center(
                  child: Text('container 1'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.red.withValues(red: value)),
                child: Center(
                  child: Text('container 2'),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
