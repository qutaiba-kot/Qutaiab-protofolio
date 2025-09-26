import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_conatiner_widjets.dart';

class ProjectColumn extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  const ProjectColumn({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final projects = List.generate(
      3,
      (index) => ProjectConatinerWidjets(
        projectNumber: index,
        isMobile: isMobile,
        isTablet: isTablet,
        height: height,
        width: width,
      ),
    );

    return CarouselSlider(
      items: projects,
      options: CarouselOptions(
        height: height * 0.6,
        viewportFraction: isMobile ? 0.8 : 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
        disableCenter: true,             
      ),
    );
  }
}
