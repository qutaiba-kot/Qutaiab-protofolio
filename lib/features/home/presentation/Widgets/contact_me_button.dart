import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';

class ContactMeButton extends StatelessWidget {
  final HomeResponsive sizes;
  const ContactMeButton({
    super.key, required this.sizes,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizes.buttonWidth,
      height: sizes.buttonHeight,
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
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Contact Info",
            style: TextStyle(
              fontSize:  12.8,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
