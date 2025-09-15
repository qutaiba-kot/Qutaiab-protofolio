import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

part 'conatct_state.dart';

class ConatctCubit extends Cubit<ConatctState> {
  ConatctCubit() : super(ConatctInitial());
   Future<void> launchURL(String urlLink) async {
    final Uri url = Uri.parse("$urlLink");
    if (!await launchUrl(
      url,
      webOnlyWindowName: '_blank',
    )) {
      throw Exception('Errror while lunching $url');
    }
  }
}
