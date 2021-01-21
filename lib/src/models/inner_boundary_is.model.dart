import 'package:kml_dart/src/models/linear_ring.model.dart';

class InnerBoundaryIs {
  LinearRing linearRing;

  InnerBoundaryIs({this.linearRing});

  InnerBoundaryIs.fromJson(Map<String, dynamic> json) {
    linearRing = json['LinearRing'] != null
        ? LinearRing.fromJson(json['LinearRing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.linearRing != null) {
      data['LinearRing'] = this.linearRing.toJson();
    }
    return data;
  }
}
