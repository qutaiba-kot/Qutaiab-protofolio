import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Contact%20me/Responsive%20Helper/contact_me_responsive.dart';
import 'package:protofolio/features/Contact%20me/logic/cubit/conatct_cubit.dart';

class LinksConatinerWidget extends StatelessWidget {
  final MainSizer mainSizer;

  const LinksConatinerWidget({
    super.key,
    required this.mainSizer
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ContactMeResponsive(
      mainSizer: mainSizer
    );

    return MainAnimation(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          border: Border.all(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            spacing: 50,
          children: [
              SizedBox(width: mainSizer.width*0.01,),
              _MyWidget(
                icon: FontAwesomeIcons.github,
                tilte: "GitHub",
                action: profile!.gitHubLink,
              ),
              _MyWidget(
                icon: Icons.email,
                tilte: "Email",
                action: profile!.emailLink,
              ),
              _MyWidget(
                icon: FontAwesomeIcons.linkedin,
                tilte: "linkedin",
                action: profile!.linkedinLink,
              ),
              SizedBox(width:mainSizer. width*0.01,),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyWidget extends StatelessWidget {
  final IconData icon;
  final String tilte;
  final String action;
  const _MyWidget({
    required this.icon,
    required this.tilte,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<ConatctCubit>().launchURL(action);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          Icon(icon, size: 20, color: Colors.white),
          Text(tilte, style: TextStyle(fontSize: 20, color: Colors.white)),
        ],
      ),
    );
  }
}
