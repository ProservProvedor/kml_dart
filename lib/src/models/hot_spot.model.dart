import 'package:kml_dart/src/models/enum/units.enum.dart';

class HotSpot {
  double x;
  double y;
  UnitsEnum xunits;
  UnitsEnum yunits;

  HotSpot({
    this.x = 0.5,
    this.y = 0.5,
    this.xunits = UnitsEnum.FRACTION,
    this.yunits = UnitsEnum.FRACTION,
  });

  HotSpot.fromJson(Map<String, dynamic> json) {
    x = json['-x'];
    y = json['-y'];
    xunits = json['-xunits'];
    yunits = json['-yunits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-x'] = this.x;
    data['-y'] = this.y;
    data['-xunits'] = this.xunits.value;
    data['-yunits'] = this.yunits.value;
    return data;
  }
}
