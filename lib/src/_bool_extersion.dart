import 'package:meta/meta.dart';

extension $BoolExtersion on bool {
  @protected
  int get toInt {
    if (this != null) {
      if (this) {
        return 1;
      } else {
        return 0;
      }
    } else {
      return null;
    }
  }
}
