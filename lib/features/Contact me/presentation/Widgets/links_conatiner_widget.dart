import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/Contact%20me/Responsive%20Helper/contact_me_responsive.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';

class LinksConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  const LinksConatinerWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ContactMeResponsive(
          isMobile: isMobile,
          isTablet: isTablet,
          height: height,
          width: width,
        );

        return HomeAnimation(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.blueGrey, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            height: sizes.containerHeight,
            width: sizes.containerWidth,
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
                      Icon(FontAwesomeIcons.github, size: sizes.linksTextSize,color: Colors.white),
                      SizedBox(width: width * 0.005),
                      Text(
                        "GitHub",
                        style: TextStyle(fontSize: sizes.linksTextSize, color: Colors.white),
                      ),
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
                      Icon(Icons.email, size: sizes.linksTextSize,color: Colors.white),
                      SizedBox(width: width * 0.01),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: sizes.linksTextSize ,color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.linkedin, size: sizes.linksTextSize,color: Colors.white),
                    SizedBox(width: width * 0.01),
                    InkWell(
                      onTap: () {
                        context.read<ConatctCubit>().launchURL(
                          "https://www.linkedin.com/in/qutaiba-albarahmeh-706686263/",
                        );
                      },
                      child: Text(
                        "Linkedin",
                        style: TextStyle(fontSize: sizes.linksTextSize,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}
