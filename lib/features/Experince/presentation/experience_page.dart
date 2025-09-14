import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/experince_conatiner_widget.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          final isMobile = state.deviceType == DeviceTypes.mobile;
          final isTablet = state.deviceType == DeviceTypes.tablet;
          return Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TitleAndSub(
                            isMobile: isMobile,
                            isTablet: isTablet,
                            height: state.height,
                            width: state.width,
                            title: "Explore My",
                            subTitle: "Experience",
                          ),
                      SizedBox(height: isMobile ? 80.h : isTablet? 90.h: 100.h),
                      isMobile
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                                SizedBox(
                                  width: isMobile
                                      ? 0
                                      : isTablet
                                      ? 0
                                      : 20.w,
                                  height: isMobile ? 50.h : 0,
                                ),
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                              ],
                            )
                          : isTablet? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                                SizedBox(
                                  width: isMobile
                                      ? 0
                                      : isTablet
                                      ? 0
                                      : 20.w,
                                  height: isMobile ? 50.h : isTablet? 50.h : 0,
                                ),
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                              ],
                            ): Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                                SizedBox(width: 20.w),
                                ExperinceConatinerWidget(
                                  isMobile: isMobile,
                                  isTablet: isTablet,
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: NextPageButton(),
                bottom: isMobile ? 0 :isTablet? -10.h: 105.h,
                right: isMobile ? 50.w :isTablet? 100.w: 100.w,
              ),
            ],
          );
        },
      ),
    );
  }
}
