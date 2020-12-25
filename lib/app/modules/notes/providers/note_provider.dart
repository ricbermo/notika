import 'package:get/get.dart';

import 'package:notika/app/modules/notes/note_model.dart';

class NoteProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Note.fromJson(map);
    httpClient.baseUrl = 'https://mockend.com/ricbermo/notika/';
  }

  Future<Response<List<Note>>> getAllNotes() =>
      get<List<Note>>('notes', decoder: Note.listFromJson);

  Future<Response<Note>> getNote(int id) async => await get('notes/$id');
  Future<Response<Note>> postNote(Note note) async => await post('notes', note);
  Future<Response> deleteNote(int id) async => await delete('notes/$id');
}
