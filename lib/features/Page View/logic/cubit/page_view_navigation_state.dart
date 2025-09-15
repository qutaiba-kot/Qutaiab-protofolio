import 'package:equatable/equatable.dart';

sealed class PageViewNavigationState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class PageViewNavigationChanged extends PageViewNavigationState {
  final int pageIndex;

  PageViewNavigationChanged(this.pageIndex);
  PageViewNavigationChanged copyWith({int? pageIndex}) {
    return PageViewNavigationChanged(pageIndex ?? this.pageIndex);
  }

  @override
  List<Object?> get props => [pageIndex];
}