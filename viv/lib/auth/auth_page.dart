//import 'package:crane/pages/login.dart';
//import 'package:crane/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:viv/pages/login.dart';
import 'package:viv/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //Show login Page
  bool showLoginPage= true;
  void toggleScreens(){
    setState(() {
      showLoginPage=!showLoginPage;
    });

  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens,);
    }else{
     return RegisterPage(showLoginPage: toggleScreens,);

    }
  }
}