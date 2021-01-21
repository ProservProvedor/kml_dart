import 'package:kml_dart/src/models/balloon_style.model.dart';
import 'package:kml_dart/src/models/icon_style.model.dart';
import 'package:kml_dart/src/models/label_style.model.dart';
import 'package:kml_dart/src/models/line_style.model.dart';
import 'package:kml_dart/src/models/list_style.model.dart';
import 'package:kml_dart/src/models/poly_style.model.dart';

class Style {
  String id;
  IconStyle iconStyle;
  LabelStyle labelStyle;
  BalloonStyle balloonStyle;
  PolyStyle polyStyle;
  LineStyle lineStyle;
  ListStyle listStyle;

  Style(
      {this.id,
      this.iconStyle,
      this.labelStyle,
      this.balloonStyle,
      this.polyStyle,
      this.lineStyle,
      this.listStyle});

  Style.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    iconStyle = json['IconStyle'] != null
        ? IconStyle.fromJson(json['IconStyle'])
        : null;
    balloonStyle = json['BalloonStyle'] != null
        ? BalloonStyle.fromJson(json['BalloonStyle'])
        : null;
    polyStyle = json['PolyStyle'] != null
        ? PolyStyle.fromJson(json['PolyStyle'])
        : null;
    lineStyle = json['LineStyle'] != null
        ? LineStyle.fromJson(json['LineStyle'])
        : null;
    listStyle = json['ListStyle'] != null
        ? ListStyle.fromJson(json['ListStyle'])
        : null;
    labelStyle = json['LabelStyle'] != null
        ? LabelStyle.fromJson(json['LabelStyle'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    if (this.iconStyle != null) {
      data['IconStyle'] = this.iconStyle.toJson();
    }
    if (this.balloonStyle != null) {
      data['BalloonStyle'] = this.balloonStyle.toJson();
    }
    if (this.polyStyle != null) {
      data['PolyStyle'] = this.polyStyle.toJson();
    }
    if (this.lineStyle != null) {
      data['LineStyle'] = this.lineStyle.toJson();
    }
    if (this.listStyle != null) {
      data['ListStyle'] = this.listStyle.toJson();
    }
    if (this.labelStyle != null) {
      data['LabelStyle'] = this.labelStyle.toJson();
    }
    return data;
  }
}
