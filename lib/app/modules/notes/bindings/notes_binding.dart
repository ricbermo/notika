import 'package:get/get.dart';

import 'package:notika/app/modules/notes/controllers/notes_controller.dart';
import 'package:notika/app/modules/notes/providers/note_provider.dart';

class NotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteProvider());
    Get.lazyPut<NotesController>(
      () => NotesController(notesProvider: Get.find()),
    );
  }
}
