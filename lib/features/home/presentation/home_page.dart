import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/burger_manu_drawer.dart';
import 'package:protofolio/Core/Widgets/intro_persona_info_widget.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        drawer: BurgerManuDrawer(),
        body: BlocBuilder<ScreenCubit, ScreenState>(
          builder: (context, state) {
            final isMobile = state.deviceType == DeviceTypes.mobile;
            final isTablet = state.deviceType == DeviceTypes.tablet;
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 40.h),
                      Row(
                        children: [
                          SizedBox(width: 200.w),
                          Text(
                            "Qutaiba Hassan",
                            style: TextStyle(
                              fontSize: isMobile
                                  ? 100.sp
                                  : isTablet
                                  ? 100.sp
                                  : 50.sp,
                            ),
                          ),
                          SizedBox(
                            width: isMobile
                                ? 700.w
                                : isTablet
                                ? 300.sp
                                : 500.w,
                          ),
                          isMobile
                              ? IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(Icons.menu),
                                )
                              : RowSelectionPage(
                                  isTablet: isTablet,
                                  isMobile: isMobile,
                                ),
                        ],
                      ),
                      SizedBox(
                        height: isMobile
                            ? 150.h
                            : isTablet
                            ? 120.h
                            : 209.h,
                      ),
                      isMobile
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 650.r,
                                  backgroundColor: Colors.black,
                                  backgroundImage: AssetImage(
                                    "assets/files/2nedPic.jpg",
                                  ),
                                ),
                                SizedBox(
                                  width: isMobile ? 0.w : 100.w,
                                  height: isMobile ? 60.h : 0.h,
                                ),
                                IntroPersonaInfoWidget(
                                  isMobile: true,
                                  isTablet: false,
                                ),
                              ],
                            )
                          : isTablet
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 520.r,
                                  backgroundColor: Colors.black,
                                  backgroundImage: AssetImage(
                                    "assets/files/2nedPic.jpg",
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                IntroPersonaInfoWidget(
                                  isTablet: true,
                                  isMobile: false,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 250.r,
                                  backgroundColor: Colors.black,
                                  backgroundImage: AssetImage(
                                    "assets/files/2nedPic.jpg",
                                  ),
                                ),
                                SizedBox(width: 100.w),
                                IntroPersonaInfoWidget(
                                  isMobile: false,
                                  isTablet: false,
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                Positioned(child: NextPageButton(), bottom: 0.h, right: 100.w),
              ],
            );
          },
        ),
      ),
    );
  }
}
