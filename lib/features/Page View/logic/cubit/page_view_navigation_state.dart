class PageViewNavigationState {}

final class PageViewNavigationChanged extends PageViewNavigationState {
  final int pageIndex;
  PageViewNavigationChanged(this.pageIndex);
}
