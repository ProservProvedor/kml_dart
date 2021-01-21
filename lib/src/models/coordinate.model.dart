import 'package:meta/meta.dart';

/// `Coordinate`represent a geographic coordinate,
class Coordinate {
  double longitude;
  double latitude;
  double altitude;

  /// create a new instance of `Coordinate`:
  /// ```
  /// Coordinate(longitude: 2,2945, latitude: 48,8584);
  /// ```
  /// the `altitude` parameter is optional, with an initial value of 0.0
  Coordinate(
      {@required this.longitude, @required this.latitude, this.altitude = 0.0});

  Coordinate.fromJson(Map<String, dynamic> json) {
    longitude = json['longitude'];
    latitude = json['latitude'];
    altitude = json['altitude'];
  }
  Coordinate.fromString(String value) {
    if (value != null) {
      List<String> splitedString = value.split(',');
      if (splitedString.length == 3) {
        latitude = double.tryParse(splitedString[1]);
        longitude = double.tryParse(splitedString[0]);
        longitude = double.tryParse(splitedString[2]);
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['altitude'] = this.altitude;
    return data;
  }

  @override
  String toString() {
    return '$longitude,$latitude,$altitude';
  }
}
