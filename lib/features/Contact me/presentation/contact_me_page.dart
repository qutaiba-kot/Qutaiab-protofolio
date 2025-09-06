import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/links_conatiner_widget.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConatctCubit(),
      child: Scaffold(
        body: BlocBuilder<ScreenCubit, ScreenState>(
          builder: (context, state) {
            final isMobile = state.deviceType == DeviceTypes.mobile;
            final isTablet = state.deviceType == DeviceTypes.tablet;
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 350.h),
                    Text(
                      "Get In Touch",
                      style: TextStyle(color: Colors.grey, fontSize:isMobile ?70.sp : isTablet ? 50.sp : 20.sp),
                    ),
                    Text(
                      "Contact Me",
                      style: TextStyle(
                        fontSize: isMobile ?120.sp: isTablet ? 130.sp:50.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50.h),
                    LinksConatinerWidget(isMobile: isMobile,isTablet: isTablet,),
                    SizedBox(height: isMobile ? 400.h : 300.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RowSelectionPage(isTablet: isTablet, isMobile: isMobile),
                      ],
                    ),
                    SizedBox(height:isMobile ? 20.h: 50.h),
                    Text(
                      "Copyright 2025 Qutaiba Hassan. All Rights Reserved",
                      style: TextStyle(color: Colors.grey, fontSize: isMobile ? 50.sp: isTablet ? 35.sp:20.sp),
                    ),
                    SizedBox(height: 50.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
