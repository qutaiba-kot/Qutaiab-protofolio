import 'package:flutter/material.dart';
import 'package:protofolio/Core/Theme/app_theme.dart';
import 'package:protofolio/features/Page%20View/presentation/Screens/page_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: PageViewNavigation(),
    );
  }
}
