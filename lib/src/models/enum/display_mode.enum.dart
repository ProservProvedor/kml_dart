enum DisplayModeEnum { HIDE, DEFAULT }

extension DisplayModeEnumExetesion on DisplayModeEnum {
  String get value {
    if (this == DisplayModeEnum.DEFAULT) return 'default';
    if (this == DisplayModeEnum.HIDE) return 'hide';
    return null;
  }
}
