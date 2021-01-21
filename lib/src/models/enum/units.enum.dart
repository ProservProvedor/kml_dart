enum UnitsEnum { FRACTION, PIXELS, INSETPIXELS }

extension UnitsEnumExtension on UnitsEnum {
  String get value {
    switch (this) {
      case UnitsEnum.FRACTION:
        return 'fraction';
        break;
      case UnitsEnum.PIXELS:
        return 'pixels';
        break;
      case UnitsEnum.INSETPIXELS:
        return 'insetPixels';
        break;
      default:
        return null;
    }
  }
}
