import 'package:flutter/material.dart';
import 'package:munaymed_frontend/screens/screen-login.dart';
import 'package:munaymed_frontend/screens/screen-register-step-one.dart';
import 'package:munaymed_frontend/screens/screen-register-step-three.dart';
import 'package:munaymed_frontend/screens/screen-register-step-two.dart';
import 'package:munaymed_frontend/screens/screen-register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MunayMed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenRegisterStepThree(),

      
    );
  }
}

