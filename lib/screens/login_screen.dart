import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_practice/provider/auth_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authScreen = Provider.of<AuthScreen>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          'Login',
          style: TextStyle(fontSize: 30, color: Colors.white),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: 'Enter your email'),
            ),
          ),
          //

          SizedBox(height: 20),
          //

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(hintText: 'Enter your password'),
            ),
          ),
          //
          SizedBox(
            height: 30,
          ),
          //

          InkWell(
            onTap: () {
              authScreen.login(emailcontroller.text.toString(),
                  passwordcontroller.text.toString());
            },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: Center(
                  child: authScreen.loading
                      ? CircularProgressIndicator()
                      : Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
            ),
          )
        ],
      ),
    );
  }
}
