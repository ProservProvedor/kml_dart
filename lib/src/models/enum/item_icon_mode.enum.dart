enum ItemIconModeEnum { OPEN, CLOSED, ERROR, FETCHING0, FETCHING1, FETCHING2 }

extension ItemIconModeEnumExt on ItemIconModeEnum {
  String get value {
    if (this != null) {
      return toString().split('.').last.toLowerCase();
    } else {
      return null;
    }
  }
}
