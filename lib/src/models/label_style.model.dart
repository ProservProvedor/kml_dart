class LabelStyle {
  String id;
  String color;
  String colorMode;
  double scale;

  LabelStyle({this.id, this.color, this.colorMode, this.scale});

  LabelStyle.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    color = json['color'];
    colorMode = json['colorMode'];
    scale = json['scale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['color'] = this.color;
    data['colorMode'] = this.colorMode;
    data['scale'] = this.scale;
    return data;
  }
}
