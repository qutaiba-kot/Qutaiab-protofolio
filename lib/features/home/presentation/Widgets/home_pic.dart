import 'package:flutter/material.dart';
class HomePic extends StatelessWidget {
  const HomePic({super.key, required this.radius});
 final double radius ;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: radius,
      backgroundColor: Colors.black,
      backgroundImage: const AssetImage("assets/files/2nedPic.jpg"),
    );
  }
}