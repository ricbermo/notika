import 'package:get/get.dart';

import 'package:notika/app/modules/notes/note_model.dart';

class NoteProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Note.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<Note>> getNote(int id) async => await get('note/$id');
  Future<Response<Note>> postNote(Note note) async => await post('note', note);
  Future<Response> deleteNote(int id) async => await delete('note/$id');
}
