import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_body_row.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_body_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          final isTablet = state.deviceType == DeviceTypes.tablet;
          final isMobile = state.deviceType == DeviceTypes.mobile;
          return SizedBox(
              height: state.height,
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    isMobile || isTablet
                        ? HomeBodyColumn(
                            isMobile: isMobile,
                            height: state.height,
                            width: state.width,
                          )
                        : HomeBodyRow(
                            height: state.height,
                            width: state.width,
                          ),
                  ],
                ),
              ),
            );
        },
      ),
    );
  }
}
