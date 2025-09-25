import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';

class ContactMeButton extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const ContactMeButton({super.key, required this.height, required this.width, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return SizedBox(
      width: sizes.buttonWidth,
      height:sizes.buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          context.read<PageViewNavigationCubit>().changePage(4);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 95, 92, 81),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          "Contact Info",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: sizes.buttonTextFontsize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
