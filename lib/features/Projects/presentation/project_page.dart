import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';
import 'package:protofolio/Core/Widgets/project_conatiner_widjets.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          var isMobile = state.deviceType == DeviceTypes.mobile;
          var isTablet = state.deviceType == DeviceTypes.tablet;
          return Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Brows My recent",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: isMobile
                              ? 60.sp
                              : isTablet
                              ? 60.sp
                              : 20.sp,
                        ),
                      ),
                      Text(
                        "Projects",
                        style: TextStyle(
                          fontSize: isMobile
                              ? 120.sp
                              : isTablet
                              ? 120.sp
                              : 50.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: isMobile ? 77.h : 33.h),
                      SizedBox(
                        width: 1300.w,
                        child: isMobile
                            ? Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ProjectConatinerWidjets(
                                        isMobile: true,
                                        isTablet: false,
                                      ),
                                      SizedBox(width: 10.w),
                                      ProjectConatinerWidjets(
                                        isMobile: true,
                                        isTablet: false,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  ProjectConatinerWidjets(
                                    isMobile: true,
                                    isTablet: false,
                                  ),
                                ],
                              )
                            : isTablet
                            ? Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ProjectConatinerWidjets(
                                        isMobile: false,
                                        isTablet: true,
                                      ),
                                      SizedBox(width: 10.w),
                                      ProjectConatinerWidjets(
                                        isMobile: false,
                                        isTablet: true,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  ProjectConatinerWidjets(
                                    isMobile: false,
                                    isTablet: true,
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ProjectConatinerWidjets(
                                    isMobile: false,
                                    isTablet: false,
                                  ),
                                  ProjectConatinerWidjets(
                                    isMobile: false,
                                    isTablet: false,
                                  ),
                                  ProjectConatinerWidjets(
                                    isMobile: false,
                                    isTablet: false,
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: NextPageButton(),
                bottom: isMobile
                    ? 130.h
                    : isTablet
                    ? 145.h
                    : 260.h,
                right: isMobile
                    ? 55.w
                    : isTablet
                    ? 100.w
                    : 100.w,
              ),
            ],
          );
        },
      ),
    );
  }
}
