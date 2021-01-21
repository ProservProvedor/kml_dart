import 'package:kml_dart/src/models/coordinate.model.dart';

class Point {
  String gxDrawOrder;
  Coordinate coordinates;

  Point({this.gxDrawOrder, this.coordinates});

  Point.fromJson(Map<String, dynamic> json) {
    gxDrawOrder = json['gx:drawOrder'];
    coordinates =
        json['coordinates'] ? Coordinate.fromString(json['coordinates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['gx:drawOrder'] = this.gxDrawOrder;
    data['coordinates'] = this.coordinates.toString();
    return data;
  }
}
