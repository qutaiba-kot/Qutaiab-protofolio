import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/about_me_container_widget.dart';
import 'package:protofolio/Core/Widgets/about_me_paragraph_container_widget.dart';
import 'package:protofolio/Core/Widgets/about_me_pic_conatiner_widget.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 70.h),
                            Text(
                              "Get To Know More",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: isMobile
                                    ? 100.sp
                                    : isTablet
                                    ? 80.sp
                                    : 20.sp,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "About Me",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isMobile
                                    ? 100.sp
                                    : isTablet
                                    ? 80.sp
                                    : 50.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: isMobile
                          ? 50.h
                          : isTablet
                          ? 80.h
                          : 120.h,
                    ),
                    isMobile
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AboutMePicConatinerWidget(
                                isMobile: true,
                                isTablet: false,
                              ),
                              SizedBox(
                                width: 60.w,
                                height: isMobile ? 50.h : 0.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AboutMeContainerWidget(
                                    icon: FontAwesomeIcons.award,
                                    title: "Experince",
                                    subTitle: "1+ Year",
                                    body: "Flutter Developer",
                                    isMobile: true,
                                    isTablet: false,
                                  ),
                                  SizedBox(width: 20.w),
                                  AboutMeContainerWidget(
                                    icon: FontAwesomeIcons.university,
                                    title: "Education",
                                    subTitle: "The Hashemite University",
                                    body: "Copmuter Science",
                                    isMobile: true,
                                    isTablet: false,
                                  ),
                                ],
                              ),
                              AboutMeParagraphContainerWidget(
                                isMobile: true,
                                isTablet: false,
                              ),
                            ],
                          )
                        : isTablet
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AboutMePicConatinerWidget(
                                isMobile: false,
                                isTablet: true,
                              ),
                              SizedBox(
                                width: 60.w,
                                height: isMobile
                                    ? 50.h
                                    : isTablet
                                    ? 30.h
                                    : 0.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AboutMeContainerWidget(
                                    icon: FontAwesomeIcons.award,
                                    title: "Experince",
                                    subTitle: "1+ Year",
                                    body: "Flutter Developer",
                                    isMobile: false,
                                    isTablet: true,
                                  ),
                                  SizedBox(width: 20.w),
                                  AboutMeContainerWidget(
                                    icon: FontAwesomeIcons.university,
                                    title: "Education",
                                    subTitle: "The Hashemite University",
                                    body: "Copmuter Science",
                                    isMobile: false,
                                    isTablet: true,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: isTablet
                                    ? 0.h
                                    : isMobile
                                    ? 0.h
                                    : 30.h,
                              ),
                              AboutMeParagraphContainerWidget(
                                isMobile: false,
                                isTablet: true,
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AboutMePicConatinerWidget(
                                isMobile: false,
                                isTablet: false,
                              ),
                              SizedBox(
                                width: 60.w,
                                height: isMobile
                                    ? 50.h
                                    : isTablet
                                    ? 30.h
                                    : 0.h,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AboutMeContainerWidget(
                                        icon: FontAwesomeIcons.award,
                                        title: "Experince",
                                        subTitle: "1+ Year",
                                        body: "Flutter Developer",
                                        isMobile: false,
                                        isTablet: false,
                                      ),
                                      SizedBox(width: 20.w),
                                      AboutMeContainerWidget(
                                        icon: FontAwesomeIcons.university,
                                        title: "Education",
                                        subTitle: "The Hashemite University",
                                        body: "Copmuter Science",
                                        isMobile: false,
                                        isTablet: false,
                                      ),
                                    ],
                                  ),
                                  AboutMeParagraphContainerWidget(
                                    isMobile: false,
                                    isTablet: false,
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ],
                ),
              ),
              Positioned(child: NextPageButton(), bottom:isMobile ? 30.h : isTablet ? 0.h : 0.h, right: 100.w),
            ],
          );
        },
      ),
    );
  }
}
