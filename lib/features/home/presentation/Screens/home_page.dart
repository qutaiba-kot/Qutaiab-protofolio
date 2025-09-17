import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_body_row.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_body_column.dart';

class HomePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const HomePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Row(
            children: [
              isMobile || isTablet
                  ? HomeBodyColumn(
                      isMobile: isMobile,
                      height: height,
                      width: width,
                    )
                  : HomeBodyRow(height: height, width: width),
            ],
          ),
        ),
      ),
    );
  }
}
