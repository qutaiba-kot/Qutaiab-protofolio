import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'page_view_navigation_state.dart';

class PageViewNavigationCubit extends Cubit<PageViewNavigationState> {
  final PageController pageController = PageController();


  PageViewNavigationCubit()
      : super(const PageViewNavigationChanged(0));

  void changePage(int index) {
    if (state is PageViewNavigationChanged) {
      final currentIndex = (state as PageViewNavigationChanged).pageIndex;

      if (currentIndex != index) {
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
    }
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
