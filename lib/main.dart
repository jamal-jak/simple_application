

import 'package:flutter/material.dart';
import 'package:flutter_projets/pages/home.dart';
import 'package:flutter_projets/pages/login.dart';
import 'package:flutter_projets/pages/signup.dart';
import 'package:flutter_projets/pages/welcom.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


       initialRoute: '/',
  routes: {
    
      '/': (context) => const Welcom(),
      '/login': (context) => const Login(),
      '/sign up': (context) => const Signup(),
      '/Home': (context) => const Home(),
  




  }

    );
    
  }
}
