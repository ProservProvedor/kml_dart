import 'package:kml_dart/src/_bool_extersion.dart';

class PolyStyle {
  String color;
  String colorMode; //TODO:TO ENUM
  bool fill;
  bool outline;

  PolyStyle({this.color});

  PolyStyle.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    colorMode = json['colorMode'];
    fill = json['fill'];
    outline = json['outline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['color'] = this.color;
    data['colorMode'] = colorMode;
    data['fill'] = this.fill.toInt;
    data['outline'] = this.outline.toInt;
    return data;
  }
}
