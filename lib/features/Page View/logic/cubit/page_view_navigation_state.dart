import 'package:equatable/equatable.dart';

sealed class PageViewNavigationState extends Equatable {
  const PageViewNavigationState();

  // Getter للوصول لقيمة pageIndex مباشرة
  int get pageIndex => 0;

  @override
  List<Object?> get props => [];
}

final class PageViewNavigationChanged extends PageViewNavigationState {
  final int _pageIndex;

  PageViewNavigationChanged(this._pageIndex);

  @override
  int get pageIndex => _pageIndex;

  PageViewNavigationChanged copyWith({int? pageIndex}) {
    return PageViewNavigationChanged(pageIndex ?? _pageIndex);
  }

  @override
  List<Object?> get props => [_pageIndex];
}
