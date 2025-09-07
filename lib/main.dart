import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/features/Contact%20me/presentation/contact_me_page.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Page%20View/presentation/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageViewNavigationCubit()),
        BlocProvider(create: (context) => ScreenCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(1920, 1080),
        minTextAdapt: false,
        splitScreenMode: true,
        ensureScreenSize: true,
        builder: (context, child) {
          final width = MediaQuery.of(context).size.width;
          context.read<ScreenCubit>().updateWidth(width);
          return MaterialApp(debugShowCheckedModeBanner: false, home: child);
        },
        child: ContactMePage(),
      ),
    );
  }
}
