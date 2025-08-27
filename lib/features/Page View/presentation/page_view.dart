import 'package:flutter/material.dart';
import 'package:protofolio/features/About%20Me/presentation/about_me_page.dart';
import 'package:protofolio/features/Contact%20me/presentation/contact_me_page.dart';
import 'package:protofolio/features/Experince/presentation/experience_page.dart';
import 'package:protofolio/features/Projects/presentation/project_page.dart';
import 'package:protofolio/features/home/presentation/home_page.dart';

class PageViewNavigation extends StatefulWidget {
  const PageViewNavigation({super.key});

  @override
  State<PageViewNavigation> createState() => _PageViewNavigationState();
}

class _PageViewNavigationState extends State<PageViewNavigation> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children:  [HomePage(), AboutMePage() , ExperiencePage(), ProjectPage() , ContactMePage()],
      ),
    );
  }
}
