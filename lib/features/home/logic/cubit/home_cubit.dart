import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'dart:io';
import 'dart:html' as html;
import 'package:http/http.dart' as http;


import 'package:path_provider/path_provider.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void downloadCv() async {
    final fileName = 'My_CV.pdf';
    final fileUrl = profile!.cvLink; 

    if (kIsWeb) {
      final response = await http.get(Uri.parse(fileUrl));
      final blob = html.Blob([response.bodyBytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      // ignore: unused_local_variable
      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', fileName)
        ..click();
      html.Url.revokeObjectUrl(url);
    } else {
      final response = await http.get(Uri.parse(fileUrl));
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$fileName');
      await file.writeAsBytes(response.bodyBytes);

      print('✅ الملف تم تنزيله إلى: ${file.path}');
    }
  }
}
