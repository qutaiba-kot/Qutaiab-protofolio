import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class IntroPersonaInfoWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  const IntroPersonaInfoWidget({
    Key? key,
    required this.isMobile,
    required this.isTablet,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double helloFontSize = isMobile
        ? 150.sp
        : isTablet
        ? 108.sp
        : 30.sp;
    double nameFontSize = isMobile
        ? 120.sp
        : isTablet
        ? 104.sp
        : 30.sp;
    double titleFontSize = isMobile
        ? 130.sp
        : isTablet
        ? 110.sp
        : 35.sp;
    EdgeInsets buttonPadding = EdgeInsets.symmetric(
      horizontal: isMobile
          ? 60.w
          : isTablet
          ? 90.w
          : 30.w,
      vertical: isMobile
          ? 10.h
          : isTablet
          ? 20.h
          : 14.h,
    );
    double iconText = isMobile
        ? 70.sp
        : isTablet
        ? 50.sp
        : 14.sp;
    return Column(
      children: [
        Text("Hello, I'm", style: TextStyle(fontSize: helloFontSize)),
        Text(
          "Qutaiba Hassan",
          style: TextStyle(fontSize: nameFontSize, fontWeight: FontWeight.bold),
        ),
        Text(
          "Flutter Developer",
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () async {
                    context.read<HomeCubit>().downloadCv();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: buttonPadding,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        isMobile
                            ? 80.w
                            : isTablet
                            ? 80.w
                            : 25.r,
                      ),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  child: Text(
                    "Download CV",
                    style: TextStyle(
                      fontSize: iconText,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              width: isMobile
                  ? 60.w
                  : isTablet
                  ? 60.w
                  : 15.w,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<PageViewNavigationCubit>().changePage(4);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 95, 92, 81),
                padding: buttonPadding,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    isMobile
                        ? 80.w
                        : isTablet
                        ? 80.w
                        : 25.r,
                  ),
                ),
              ),
              child: Text(
                "Contact Info",
                style: TextStyle(
                  fontSize: iconText,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: isMobile
              ? 60.h
              : isTablet
              ? 60.h
              : 35.h,
        ),
        Icon(
          FontAwesomeIcons.flutter,
          size: isMobile
              ? 170.sp
              : isTablet
              ? 145.sp
              : 50.sp,
          color: const Color.fromARGB(255, 60, 135, 197),
        ),
      ],
    );
  }
}
