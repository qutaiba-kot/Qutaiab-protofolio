
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Experince/Logic/Cubit/experince_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit() : super(const ExperienceState());

  void changeIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}