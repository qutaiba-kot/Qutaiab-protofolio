import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
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
          color: AppColors.primary,
          border: Border.all(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _MyWidget(
              icon: FontAwesomeIcons.github,
              tilte: "GitHub",
              action: profile!.gitHubLink,
              width: sizes.containerWidth,
              size: sizes.linksTextSize,
            ),
            _MyWidget(
              icon: Icons.email,
              tilte: "Email",
              action: profile!.emailLink,
              width: sizes.containerWidth,
              size: sizes.linksTextSize,
            ),
            _MyWidget(
              icon: FontAwesomeIcons.linkedin,
              tilte: "linkedin",
              action: profile!.linkedinLink,
              width: sizes.containerWidth,
              size: sizes.linksTextSize,
            ),
          ],
        ),
      ),
    );
  }
}

class _MyWidget extends StatelessWidget {
  final IconData icon;
  final String tilte;
  final String action;
  final double width;
  final double size;
  const _MyWidget({
    required this.icon,
    required this.tilte,
    required this.action,
    required this.width,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.3,
      child: InkWell(
        onTap: () {
          context.read<ConatctCubit>().launchURL(action);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Icon(icon, size: size, color: Colors.white),
            ),
            SizedBox(width: width * 0.02),
            Flexible(
              child: Text(
                tilte,
                style: TextStyle(fontSize: size, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
