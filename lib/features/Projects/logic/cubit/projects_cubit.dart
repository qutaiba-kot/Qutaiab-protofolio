import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:url_launcher/url_launcher.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsInitial());
   Future<void> launchURL(String urlLink) async {
    final Uri url = Uri.parse(urlLink);
    if (!await launchUrl(
      url,
      webOnlyWindowName: '_blank',
    )) {
      throw Exception('Errror while lunching $url');
    }
  }
}
