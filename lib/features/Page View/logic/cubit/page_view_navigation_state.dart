
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class PageViewNavigationCubit extends Cubit<PageViewNavigationState> {
  PageViewNavigationCubit() : super(PageViewNavigationChanged(0));

  void changePage(int index) {
    emit(PageViewNavigationChanged(index));
  }
}
