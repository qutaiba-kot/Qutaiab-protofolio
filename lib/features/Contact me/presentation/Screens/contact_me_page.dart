import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Contact%20me/Responsive%20Helper/contact_me_responsive.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';
import 'package:protofolio/features/Contact%20me/presentation/Widgets/links_conatiner_widget.dart';

class ContactMePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const ContactMePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ContactMeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return BlocProvider(
      create: (context) => ConatctCubit(),
      child: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * (isMobile ? 0.3 : 0.2)),
              TitleAndSub(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
                title: "Get In Touch",
                subTitle: "Contact Me",
              ),
              SizedBox(
                height:
                    height *
                    (isMobile
                        ? 0.03
                        : isTablet
                        ? 0.04
                        : 0.05),
              ),
              LinksConatinerWidget(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
              ),
              SizedBox(
                height: isTablet
                    ? height * 0.2
                    : isMobile
                    ? height * 0.3
                    : height * 0.3,
              ),
              HomeAnimation(
                beginOffset: Offset(0, 1),
                child: SizedBox(
                  height: sizes.copyrightContainerHeight,
                  width: sizes.copyrightContainerWidth,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Copyright 2025 Qutaiba Hassan. All Rights Reserved",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
