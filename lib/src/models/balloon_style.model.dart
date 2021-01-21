import 'package:kml_dart/src/models/enum/display_mode.enum.dart';

class BalloonStyle {
  String id;
  String bgColor;
  String textColor;
  String text;
  DisplayModeEnum displayMode;

  BalloonStyle(
      {this.id,
      this.bgColor,
      this.textColor,
      this.text,
      this.displayMode = DisplayModeEnum.DEFAULT});

  BalloonStyle.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    bgColor = json['bgColor'];
    textColor = json['textColor'];
    text = json['text'];
    displayMode = json['displayMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['bgColor'] = this.bgColor;
    data['textColor'] = this.textColor;
    data['text'] = this.text;
    data['displayMode'] = this.displayMode.value;
    return data;
  }
}
