import 'package:kml_dart/src/models/enum/color_mode.enum.dart';
import 'package:kml_dart/src/models/hot_spot.model.dart';
import 'package:kml_dart/src/models/icon_kml.model.dart';

class IconStyle {
  String id;
  String color;
  ColorMode colorMode;
  double scale;
  IconKml icon;
  HotSpot hotSpot;

  IconStyle(
      {this.id,
      this.color,
      this.colorMode = ColorMode.NORMAL,
      this.scale,
      this.icon,
      this.hotSpot});

  IconStyle.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    color = json['color'];
    colorMode = json['colorMode'];
    scale = json['scale'];
    icon = json['Icon'] != null ? IconKml.fromJson(json['Icon']) : null;
    hotSpot =
        json['hotSpot'] != null ? HotSpot.fromJson(json['hotSpot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['color'] = this.color;
    data['colorMode'] = this.colorMode.value;
    data['scale'] = this.scale;
    if (this.icon != null) {
      data['Icon'] = this.icon.toJson();
    }
    if (this.hotSpot != null) {
      data['hotSpot'] = this.hotSpot.toJson();
    }
    return data;
  }
}
