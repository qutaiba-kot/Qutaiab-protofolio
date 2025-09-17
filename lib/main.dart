import 'package:flutter/material.dart';
import 'package:protofolio/features/Page%20View/presentation/Screens/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViewNavigation(),
    );
  }
}
