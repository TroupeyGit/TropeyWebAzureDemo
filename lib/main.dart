import 'package:flutter/material.dart';
import 'package:tropey_web_azure_demo/Utils/PreferenceKeys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tropey_web_azure_demo/home/HomePage.dart';
import 'package:tropey_web_azure_demo/login/view/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Authenticate()
    );
  }
}

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  late final String? token;

  @override
  Future<void> initState() async {
    super.initState();
    SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString(PreferenceKeys.ACCESS_TOKEN);
  }

  @override
  Widget build(BuildContext context) {
    if(token!=null){
      if(token!.isEmpty){
        return HomePage();
      }else{
        return LoginPage();
      }
    }
    return  LoginPage();
  }
}
