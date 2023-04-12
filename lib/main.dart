import 'package:flutter/material.dart';
import 'package:instagram_ui_flutter/pages/feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedScreen(),
    );
  }
}
