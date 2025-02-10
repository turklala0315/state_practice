import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_practice/prctice/state_practice.dart';
import 'package:state_practice/provider/count_provider.dart';
import 'package:state_practice/provider/example_one_provider.dart';
import 'package:state_practice/screens/count_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ExampleOneProvider(),
      ),
    );
  }
}
