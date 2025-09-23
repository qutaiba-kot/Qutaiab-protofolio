import 'package:flutter/material.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
class HomePic extends StatelessWidget {
  const HomePic({super.key, required this.radius});
 final double radius ;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: radius,
      backgroundColor: Colors.black,
      backgroundImage: NetworkImage(profile!.firstPic),
    );
  }
}