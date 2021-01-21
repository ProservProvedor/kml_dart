class Snippet {
  int maxLines;
  String value;

  Snippet({this.maxLines, this.value});

  Snippet.fromJson(Map<String, dynamic> json) {
    maxLines = json['-maxLines'];
    value = json['#value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-maxLines'] = this.maxLines;
    data['#value'] = this.value;
    return data;
  }
}
