enum PairType { HIGHLIGHT, NORMAL }

extension PairTypeExetesion on PairType {
  String get value {
    if (this == PairType.HIGHLIGHT) return 'highlight';
    if (this == PairType.NORMAL) return 'normal';
    return null;
  }

  PairType fromString(String value) {
    switch (value) {
      case 'highlight':
        return PairType.HIGHLIGHT;
        break;
      case 'normal':
        return PairType.NORMAL;
        break;
      default:
        return null;
    }
  }
}
