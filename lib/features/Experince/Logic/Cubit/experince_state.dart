class ExperienceState {
  final int currentIndex;
  const ExperienceState({this.currentIndex = 0});

  ExperienceState copyWith({int? currentIndex}) {
    return ExperienceState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

