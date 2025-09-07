import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';

class LinksConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;

  const LinksConatinerWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConatctCubit, ConatctState>(
      builder: (context, state) {
        final containerHeight = isMobile
            ? 70.h
            : isTablet
            ? 90.h
            : 80.h;

        final containerWidth = isMobile
            ? 1500.w
            : isTablet
            ? 1300.w
            : 490.w;

        final textSize = isMobile
            ? 70.sp
            : isTablet
            ? 60.sp
            : 20.sp;

        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          height: containerHeight,
          width: containerWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  context.read<ConatctCubit>().launchURL(
                    "https://github.com/qutaiba-kot",
                  );
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.github, size: textSize),
                    SizedBox(width: 10.w),
                    Text("GitHub", style: TextStyle(fontSize: textSize)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<ConatctCubit>().launchURL(
                    "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJvnqtWwvFJtsgBcwMstxpDNWxRcQLXMxtpgvHljStVFbzqgKrfvjRdjsHFgBHxhvFKDKbq",
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.email, size: textSize),
                    SizedBox(width: 10.w),
                    Text("Email", style: TextStyle(fontSize: textSize)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.linkedin, size: textSize),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: () {
                      context.read<ConatctCubit>().launchURL(
                        "https://www.linkedin.com/in/qutaiba-albarahmeh-706686263/",
                      );
                    },
                    child: Text(
                      "Linkedin",
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
