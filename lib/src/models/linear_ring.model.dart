import 'package:kml_dart/src/models/enum/altitude_mode.enum.dart';
import 'package:kml_dart/src/models/coordinate.model.dart';

class LinearRing {
  String id;
  double gxAltitudeOffset;
  bool extrude;
  bool tessellate;
  AltitudeMode altitudeMode;
  List<Coordinate> coordinates;

  LinearRing(
      {this.id,
      this.gxAltitudeOffset,
      this.extrude,
      this.tessellate,
      this.altitudeMode = AltitudeMode.RELATIVE_TO_SEA_FLOOR,
      this.coordinates});

  LinearRing.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    gxAltitudeOffset = json['gx:altitudeOffset'];
    extrude = json['extrude'];
    tessellate = json['tessellate'];
    altitudeMode = altitudeMode.fromString(json['altitudeMode']);
    coordinates = _coordinatesFromString(json['coordinates']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['gx:altitudeOffset'] = this.gxAltitudeOffset;
    data['extrude'] = this.extrude;
    data['tessellate'] = this.tessellate;
    data['altitudeMode'] = this.altitudeMode.value;
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
