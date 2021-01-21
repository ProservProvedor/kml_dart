import 'package:kml_dart/src/models/pair.model.dart';

class StyleMap {
  String id;
  List<Pair> pair;

  StyleMap({this.id, this.pair});

  StyleMap.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    if (json['Pair'] != null) {
      pair = List<Pair>();
      json['Pair'].forEach((v) {
        pair.add(Pair.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    if (this.pair != null) {
      data['Pair'] = this.pair.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
