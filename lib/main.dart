import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
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
        BlocProvider(create: (_) => PageViewNavigationCubit()),
        BlocProvider(create: (_) => ScreenCubit()),
      ],
      child: Builder(
        builder: (context) {
          final width = MediaQuery.of(context).size.width;
          final height = MediaQuery.of(context).size.height;
          context.read<ScreenCubit>().updateWidth(width, height);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:  PageViewNavigation(),
          );
        },
      ),
    );
  }
}
