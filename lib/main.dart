import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/presentation/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageViewNavigationCubit(),
      child: ScreenUtilInit(
        designSize: const Size(1920, 1080),
        minTextAdapt: false,
        splitScreenMode: true,
        ensureScreenSize: true,
        builder: (context, child) {
          return MaterialApp(debugShowCheckedModeBanner: false, home: child);
        },
        child: PageViewNavigation(),
      ),
    );
  }
}
