import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Contact%20me/Responsive%20Helper/contact_me_responsive.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';
import 'package:protofolio/features/Contact%20me/presentation/Widgets/links_conatiner_widget.dart';

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
            final sizes = ContactMeResponsive(
              isMobile: isMobile,
              isTablet: isTablet,
              height: state.height,
              width: state.width,
            );
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/files/flutter_pic.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: state.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TitleAndSub(
                          isMobile: isMobile,
                          isTablet: isTablet,
                          height: state.height,
                          width: state.width,
                          title: "Get In Touch",
                          subTitle: "Contact Me",
                        ),
                        SizedBox(height: sizes.linksSpacing),
                        LinksConatinerWidget(
                          isMobile: isMobile,
                          isTablet: isTablet,
                          height: state.height,
                          width: state.width,
                        ),
                        SizedBox(height: sizes.bottomSpacing),
                        HomeAnimation(
                          beginOffset: Offset(1, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RowSelectionPage(
                                width: state.width,
                                height: state.height,
                                isMobile: isMobile,
                                isTablet: isTablet,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: sizes.copyrightsSpacing),
                        HomeAnimation(
                          beginOffset: Offset(0, 1),
                          child: Text(
                            "Copyright 2025 Qutaiba Hassan. All Rights Reserved",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: sizes.CopyrightTextSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
