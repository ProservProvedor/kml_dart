import 'package:kml_dart/src/models/coordinate.model.dart';
import 'package:kml_dart/src/models/line_string.model.dart';
import 'package:kml_dart/src/models/look_at.model.dart';
import 'package:kml_dart/src/models/point.model.dart';
import 'package:kml_dart/src/models/polygon.model.dart';
import 'package:kml_dart/src/_bool_extersion.dart';

class Placemark {
  String name;
  //BoolInt visibility;
  bool visibility;
  //BoolInt open;
  bool open;
  String description;
  LookAt lookAt;
  String styleUrl;
  Point point;
  Polygon polygon;
  LineString lineString;

  Placemark(
      {this.name,
      //this.visibility = BoolInt.TRUE,
      this.visibility = true,
      //this.open = BoolInt.FALSE,
      this.open = false,
      this.description,
      this.lookAt,
      this.styleUrl,
      this.point,
      this.polygon,
      this.lineString}) {
    if (lookAt != null && point == null) {
      this.point = Point(
          coordinates: Coordinate(
        altitude: lookAt.altitude,
        latitude: lookAt.latitude,
        longitude: lookAt.longitude,
      ));
    }
  }
  Placemark.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    visibility = json['visibility'];
    open = json['open'];
    description = json['description'];
    lookAt = json['LookAt'] != null ? LookAt.fromJson(json['LookAt']) : null;
    styleUrl = json['styleUrl'];
    point = json['Point'] != null ? Point.fromJson(json['Point']) : null;
    polygon =
        json['Polygon'] != null ? Polygon.fromJson(json['Polygon']) : null;
    lineString = json['LineString'] != null
        ? LineString.fromJson(json['LineString'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    //data['visibility'] = this.visibility.value;
    data['visibility'] = this.visibility.toInt;
    //data['open'] = this.open.value;
    data['open'] = this.open.toInt;
    data['description'] = this.description;
    if (this.lookAt != null) {
      data['LookAt'] = this.lookAt.toJson();
    }
    data['styleUrl'] = this.styleUrl;
    if (this.point != null) {
      data['Point'] = this.point.toJson();
    }
    if (this.polygon != null) {
      data['Polygon'] = this.polygon.toJson();
    }
    if (this.lineString != null) {
      data['LineString'] = this.lineString.toJson();
    }
    return data;
  }
}
