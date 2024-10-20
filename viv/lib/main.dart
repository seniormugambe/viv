

//import 'package:crane/auth/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:viv/auth/main_page.dart';
import 'firebase_options.dart';



void main()async{
   WidgetsFlutterBinding.ensureInitialized(); // Ensure that the Flutter engine is initialized
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform, // Firebase initialization with platform options
 );
  runApp(const MaterialApp(
home:MainPage(),

  )
 );
 }