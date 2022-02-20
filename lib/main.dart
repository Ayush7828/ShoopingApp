import 'package:flutter/material.dart';
import 'package:shopping/pages/homepage.dart';
import 'package:shopping/pages/loginpage.dart';
import 'package:shopping/pages/register_page.dart';
import 'package:shopping/pages/splash_Screen.dart';
import 'package:shopping/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const SplashScreen(),
      routes: {
        MyRoutes.login: (context) => const LoginPage(),
        MyRoutes.register: (context) => const RegisterPage(),
        MyRoutes.home: (context) => const HomePage(),
      },
    );
  }
}
