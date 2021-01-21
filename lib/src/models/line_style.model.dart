import 'package:kml_dart/src/_bool_extersion.dart';

class LineStyle {
  String id;
  String color;
  String colorMode;
  double width;
  String gxOuterColor;
  double gxOuterWidth;
  double gxPhysicalWidth;
  bool gxLabelVisibility;

  LineStyle(
      {this.id,
      this.color,
      this.colorMode,
      this.width,
      this.gxOuterColor,
      this.gxOuterWidth,
      this.gxPhysicalWidth,
      this.gxLabelVisibility});

  LineStyle.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    color = json['color'];
    colorMode = json['colorMode'];
    width = json['width'];
    gxOuterColor = json['gx:outerColor'];
    gxOuterWidth = json['gx:outerWidth'];
    gxPhysicalWidth = json['gx:physicalWidth'];
    gxLabelVisibility = json['gx:labelVisibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['color'] = this.color;
    data['colorMode'] = this.colorMode;
    data['width'] = this.width;
    data['gx:outerColor'] = this.gxOuterColor;
    data['gx:outerWidth'] = this.gxOuterWidth;
    data['gx:physicalWidth'] = this.gxPhysicalWidth;
    data['gx:labelVisibility'] = this.gxLabelVisibility.toInt;
    return data;
  }
}
