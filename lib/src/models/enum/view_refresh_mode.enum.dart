enum ViewRefreshMode { NEVER, ONSTOP, ONREQUEST, ONREGION }

extension ViewRefreshModeExt on ViewRefreshMode {
  String get value {
    switch (this) {
      case ViewRefreshMode.NEVER:
        return 'never';
        break;
      case ViewRefreshMode.ONSTOP:
        return 'onStop';
        break;
      case ViewRefreshMode.ONREQUEST:
        return 'onRequest';
        break;
      case ViewRefreshMode.ONREGION:
        return 'onRegion';
        break;
      default:
        return null;
    }
  }
}
