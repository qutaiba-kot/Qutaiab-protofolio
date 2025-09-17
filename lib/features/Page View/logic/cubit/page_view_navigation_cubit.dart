import 'package:flutter/material.dart'; // ✅ لإضافة PageController
import 'package:flutter_bloc/flutter_bloc.dart';
import 'page_view_navigation_state.dart';

// ================= Cubit ===================
class PageViewNavigationCubit extends Cubit<PageViewNavigationState> {
  final PageController pageController = PageController();
final double width;
  final double height;
  PageViewNavigationCubit(this.width, this.height) : super(PageViewNavigationChanged(0));

  void changePage(int index) {
    if (pageController.hasClients &&
        pageController.page?.round() != index) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
      );
    }
    emit(PageViewNavigationChanged(index));
  }
  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
