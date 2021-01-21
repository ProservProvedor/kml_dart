import 'package:kml_dart/src/models/enum/pair_type.enum.dart';

class Pair {
  String id;
  PairType key;
  String styleUrl;

  Pair({this.key, this.styleUrl});

  Pair.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    styleUrl = json['styleUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['key'] = this.key.value;
    data['styleUrl'] = this.styleUrl;
    return data;
  }
}
