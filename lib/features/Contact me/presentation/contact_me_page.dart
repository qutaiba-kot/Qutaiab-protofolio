import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConatctCubit(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Get In Touch",
                  style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                ),
                Text(
                  "Contact Me",
                  style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50.h),
                BlocBuilder<ConatctCubit, ConatctState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      height: 80,
                      width: 490,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              context.read<ConatctCubit>().launchURL(
                                "https://github.com/qutaiba-kot",
                              );
                            },
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.github),
                                SizedBox(width: 10.w),
                                Text("GitHub"),
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
                                Icon(Icons.email),
                                SizedBox(width: 10.w),
                                Text("qutibaone@gmail.com"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.linkedin),
                              SizedBox(width: 10.w),
                              InkWell(
                                onTap: () {
                                  context.read<ConatctCubit>().launchURL(
                                    "https://www.linkedin.com/in/qutaiba-albarahmeh-706686263/",
                                  );
                                },
                                child: Text("LinkedIn"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 300.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [RowSelectionPage(isTablet: false,isMobile: true,)],
                ),
                SizedBox(height: 50.h),
                Text(
                  "Copyright 2025 Qutaiba Hassan. All Rights Reserved",
                  style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
