import 'package:flutter/material.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_theme.dart';
import 'package:protofolio/features/Page%20View/presentation/Screens/page_view_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSupabase();
  await fetchProfile();
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
