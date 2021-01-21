import 'package:kml_dart/src/models/enum/item_icon_mode.enum.dart';

class ItemIcon {
  ItemIconModeEnum state;
  String href;

  ItemIcon({this.state, this.href});

  ItemIcon.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['state'] = this.state.value;
    data['href'] = this.href;
    return data;
  }
}
