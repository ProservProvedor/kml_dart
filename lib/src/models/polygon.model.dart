import 'package:kml_dart/src/models/enum/altitude_mode.enum.dart';
import 'package:kml_dart/src/models/inner_boundary_is.model.dart';
import 'package:kml_dart/src/models/outer_boundary_is.model.dart';
import 'package:kml_dart/src/_bool_extersion.dart';

class Polygon {
  String id;
  bool extrude;
  bool tessellate;
  AltitudeMode altitudeMode;
  OuterBoundaryIs outerBoundaryIs;
  List<InnerBoundaryIs> innerBoundaryIs;

  Polygon(
      {this.id,
      this.extrude,
      this.tessellate,
      this.altitudeMode = AltitudeMode.RELATIVE_TO_SEA_FLOOR,
      this.outerBoundaryIs});

  Polygon.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    extrude = json['extrude'];
    tessellate = json['tessellate'];
    altitudeMode = json['altitudeMode'];

    outerBoundaryIs = json['outerBoundaryIs'] != null
        ? OuterBoundaryIs.fromJson(json['outerBoundaryIs'])
        : null;
    if (json['innerBoundaryIs'] != null) {
      innerBoundaryIs = List<InnerBoundaryIs>();
      json['innerBoundaryIs'].forEach((v) {
        innerBoundaryIs.add(InnerBoundaryIs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['extrude'] = this.extrude.toInt;
    data['tessellate'] = this.tessellate.toInt;
    data['altitudeMode'] = this.altitudeMode.value;

    if (this.outerBoundaryIs != null) {
      data['outerBoundaryIs'] = this.outerBoundaryIs.toJson();
    }
    if (this.innerBoundaryIs != null) {
      data['innerBoundaryIs'] =
          this.innerBoundaryIs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
