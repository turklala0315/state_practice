import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_practice/provider/auth_screen.dart';
import 'package:state_practice/provider/count_provider.dart';
import 'package:state_practice/provider/favourite_provider.dart';
import 'package:state_practice/provider/theme_changer.dart';
import 'package:state_practice/screens/checking.dart';
import 'package:state_practice/screens/dark_theme.dart';
import 'package:state_practice/screens/example_one.dart';
import 'package:state_practice/screens/login_screen.dart';

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
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ChangeNotifierProvider(create: (_) => ExampleOne()),
        ChangeNotifierProvider(create: (_) => AuthScreen())
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          home: Checking(),
        );
      }),
    );
  }
}
