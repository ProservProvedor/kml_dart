import 'package:kml_dart/src/models/enum/altitude_mode.enum.dart';
import 'package:kml_dart/src/models/coordinate.model.dart';
import 'package:kml_dart/src/_bool_extersion.dart';

class LineString {
  String id;
  double gxAltitudeOffset;
  bool extrude;
  bool tessellate;
  AltitudeMode altitudeMode;
  int gxDrawOrder;
  List<Coordinate> coordinates;

  LineString(
      {this.id,
      this.gxAltitudeOffset,
      this.extrude,
      this.tessellate,
      this.altitudeMode,
      this.gxDrawOrder,
      this.coordinates});

  LineString.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    gxAltitudeOffset = json['gx:altitudeOffset'];
    extrude = json['extrude'];
    tessellate = json['tessellate'];
    altitudeMode = altitudeMode.fromString(json['altitudeMode']);
    gxDrawOrder = json['gx:drawOrder'];
    coordinates = _coordinatesFromString(json['coordinates']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['gx:altitudeOffset'] = this.gxAltitudeOffset;
    data['extrude'] = this.extrude.toInt;
    data['tessellate'] = this.tessellate.toInt;
    data['altitudeMode'] = this.altitudeMode.value;
    data['gx:drawOrder'] = this.gxDrawOrder;
    data['coordinates'] = _coordinatesToString();
    return data;
  }

  String _coordinatesToString() {
    List<String> coordinates = [];
    this.coordinates.forEach((coordinate) {
      coordinates.add(coordinate.toString());
    });
    return coordinates.join(',');
  }

  List<Coordinate> _coordinatesFromString(String string) {
    List<Coordinate> coordinates = [];
    if (string != null) {
      List<String> stringSplit = string.split(',');

      if (stringSplit.length % 3 == 0) {
        while (stringSplit.isNotEmpty) {
          coordinates.add(Coordinate(
            longitude: double.tryParse(stringSplit[0].toString()),
            latitude: double.tryParse(stringSplit[1].toString()),
            altitude: double.tryParse(stringSplit[2].toString()),
          ));
          stringSplit.removeRange(0, 2);
        }
      }
    }
    return coordinates;
  }
}
