import 'package:equatable/equatable.dart';

// الحالة الأساسية (abstract فقط)
sealed class PageViewNavigationState extends Equatable {
  const PageViewNavigationState();
}

// الحالة عند تغيير الصفحة
final class PageViewNavigationChanged extends PageViewNavigationState {
  final int pageIndex;

  const PageViewNavigationChanged(this.pageIndex);

  PageViewNavigationChanged copyWith({int? pageIndex}) {
    return PageViewNavigationChanged(pageIndex ?? this.pageIndex);
  }

  @override
  List<Object?> get props => [pageIndex];
}
