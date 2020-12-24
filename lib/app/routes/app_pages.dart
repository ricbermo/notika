import 'package:get/get.dart';

import 'package:notika/app/modules/notes/bindings/notes_binding.dart';
import 'package:notika/app/modules/notes/views/notes_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.NOTES;

  static final routes = [
    GetPage(
      name: _Paths.NOTES,
      page: () => NotesView(),
      binding: NotesBinding(),
    ),
  ];
}
