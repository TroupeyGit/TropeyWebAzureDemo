import 'package:flutter/material.dart';

/// Our Main Screen or Home
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text("Welcome to the home page"),
                        Text("Lets explore")
                    ]))));
  }
}
