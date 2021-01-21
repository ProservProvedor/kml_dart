enum ColorMode { NORMAL, RANDOM }

extension ColorModeExt on ColorMode {
  String get value {
    switch (this) {
      case ColorMode.NORMAL:
        return 'normal';
        break;
      case ColorMode.RANDOM:
        return 'random';
        break;
      default:
        return null;
    }
  }
}
