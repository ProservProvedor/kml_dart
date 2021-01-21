import 'package:kml_dart/src/models/enum/altitude_mode.enum.dart';

class LookAt {
  String id;
  double longitude;
  double latitude;
  double altitude;
  double heading;
  double tilt;
  double range;
  AltitudeMode gxAltitudeMode;

  LookAt(
      {this.longitude,
      this.latitude,
      this.altitude = 0.0,
      this.heading = 0.0,
      this.tilt = 29.000000000000000,
      this.range = 140.0,
      this.gxAltitudeMode = AltitudeMode.RELATIVE_TO_SEA_FLOOR});

  LookAt.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    altitude = json['altitude'];
    heading = json['heading'];
    tilt = json['tilt'];
    range = json['range'];
    gxAltitudeMode = gxAltitudeMode.fromString(json['gx:altitudeMode']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['altitude'] = this.altitude;
    data['heading'] = this.heading;
    data['tilt'] = this.tilt;
    data['range'] = this.range;
    data['gx:altitudeMode'] = this.gxAltitudeMode.value;
    return data;
  }
}
