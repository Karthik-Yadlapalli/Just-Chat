import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(193, 255, 227, 181)),
      ),
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
    );
  }
}
