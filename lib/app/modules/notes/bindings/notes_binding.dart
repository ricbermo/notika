import 'package:get/get.dart';

import 'package:notika/app/modules/notes/controllers/notes_controller.dart';

class NotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotesController>(
      () => NotesController(),
    );
  }
}
