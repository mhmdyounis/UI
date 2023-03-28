import 'package:flutter/material.dart';
import 'package:ui_app/screens/app/buttom_bar_screen.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/chat_screen.dart';
import 'package:ui_app/screens/app/user_screen.dart';
import 'package:ui_app/screens/launch_screen.dart';
import 'package:ui_app/screens/login_screen.dart';
import 'package:ui_app/screens/out_boarding/out_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/users_screen': (context) => UsersScreen(),
        '/categorise_screen': (context) => CategoriesScreen(),
        '/chat_screen': (context) => ChatScreen(),
        '/buttom_bar_screen': (context) => const ButtomBarScreen()
      },
    );
  }
}
