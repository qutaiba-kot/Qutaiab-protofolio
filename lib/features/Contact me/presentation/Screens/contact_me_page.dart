import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Contact%20me/Responsive%20Helper/contact_me_responsive.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';
import 'package:protofolio/features/Contact%20me/presentation/Widgets/links_conatiner_widget.dart';

class ContactMePage extends StatelessWidget {
  final MainSizer mainSizer;
  const ContactMePage({
    super.key,
    required this.mainSizer
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ContactMeResponsive(
      mainSizer: mainSizer
    );
    return BlocProvider(
      create: (context) => ConatctCubit(),
      child: SingleChildScrollView(
        child: SizedBox(
          height: mainSizer.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: mainSizer.height * (mainSizer.isMobile ? 0.3 : 0.2)),
              TitleAndSub(
                mainSizer: mainSizer,
                title: "Get In Touch",
                subTitle: "Contact Me",
              ),
              SizedBox(
                height:
                   mainSizer. height *
                    (mainSizer.isMobile
                        ? 0.03
                        : mainSizer.isTablet
                        ? 0.04
                        : 0.05),
              ),
              MainAnimation(
                delay: const Duration(milliseconds: 600),
                child: LinksConatinerWidget(
                  mainSizer: mainSizer,
                ),
              ),
              SizedBox(
                height: mainSizer.isTablet
                    ? mainSizer.height * 0.2
                    : mainSizer.isMobile
                    ? mainSizer.height * 0.3
                    : mainSizer.height * 0.3,
              ),
              MainAnimation(
                delay: const Duration(milliseconds: 800),
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
