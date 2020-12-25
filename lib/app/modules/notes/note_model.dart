class Note {
  int id;
  String title;
  String text;
  String createdAt;
  String updateAt;

  Note({this.id, this.title, this.text, this.createdAt, this.updateAt});

  Note.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    text = json['text'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
  }

  static List<Note> listFromJson(list) =>
      List<Note>.from(list.map((x) => Note.fromJson(x)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['text'] = this.text;
    data['createdAt'] = this.createdAt;
    data['updateAt'] = this.updateAt;
    return data;
  }
}
