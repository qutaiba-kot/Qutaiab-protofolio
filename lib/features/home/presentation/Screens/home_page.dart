import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/features/home/presentation/Widgets/burger_manu_drawer.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_app_bar.dart';
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
          return Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: HomeAppBar(
              width: state.width,
              height: state.height,
              isMobile: isMobile,
              isTablet: isTablet,
            ),
            endDrawer: BurgerManuDrawer(width: state.width),
            body: SizedBox(
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
            ),
          );
        },
      ),
    );
  }
}
