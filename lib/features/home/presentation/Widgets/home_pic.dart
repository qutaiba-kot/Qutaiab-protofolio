import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';

class HomePic extends StatelessWidget {
  const HomePic({super.key, required this.isMobile, required this.height, required this.width});
  final bool isMobile;
  final double height ; 
  final double width ;
  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(isMobile: isMobile, isTablet: false, height: height, width: width);
    return HomeAnimation(
      beginOffset: Offset(0, -1),
      child: CircleAvatar(
        radius:sizes.picRadius ,
        backgroundColor: Colors.black,
        backgroundImage: NetworkImage(profile!.firstPic),
      ),
    );
  }
}
