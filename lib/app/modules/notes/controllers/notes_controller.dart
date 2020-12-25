import 'package:get/get.dart';
import 'package:notika/app/modules/notes/providers/note_provider.dart';

import '../note_model.dart';

class NotesController extends GetxController with StateMixin<List<Note>> {
  final NoteProvider notesProvider;

  NotesController({this.notesProvider});

  @override
  void onInit() {
    fetchNotes();
    super.onInit();
  }

  void fetchNotes() async {
    notesProvider.getAllNotes().then((result) {
      List<Note> data = result.body;
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
