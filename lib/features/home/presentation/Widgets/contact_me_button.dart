import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class ContactMeButton extends StatelessWidget {
  final double height;
  final double width;
  const ContactMeButton({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = (height * 0.10);
    final double buttonWidth =  (width * 0.35);
    final double buttonText = (buttonWidth*buttonHeight)/450;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: buttonWidth,
          height: buttonHeight,
          child: ElevatedButton(
            onPressed: () {
              context.read<PageViewNavigationCubit>().changePage(4);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 95, 92, 81),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.08),
              ),
            ),
            child: Text(
              "Contact Info",
              style: TextStyle(
                fontSize: buttonText,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
