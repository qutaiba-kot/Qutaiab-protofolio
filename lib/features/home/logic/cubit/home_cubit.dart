import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'dart:io';
import 'dart:html' as html;

import 'package:path_provider/path_provider.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  void downloadCv() async {
    final fileName = 'My_CV.pdf';
    if (kIsWeb) {
        final bytes = await rootBundle.load('assets/files/$fileName');
        final blob = html.Blob([bytes.buffer.asUint8List()]);
        final url = html.Url.createObjectUrlFromBlob(blob);
        // ignore: unused_local_variable
        final anchor = html.AnchorElement(href: url)
          ..setAttribute('download', fileName)
          ..click();
        html.Url.revokeObjectUrl(url);
    } else {
        final bytes = await rootBundle.load('assets/files/$fileName');
        final dir = await getApplicationDocumentsDirectory();
        final file = File('${dir.path}/$fileName');
        await file.writeAsBytes(bytes.buffer.asUint8List());
    }
  }
}
