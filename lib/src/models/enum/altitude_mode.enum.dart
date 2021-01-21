///Many KML features can contain an `altitude` element or coordinate,
///which specifies a distance above the ground level, sea level,
///or sea floor for that particular feature.
///learn [more here](https://developers.google.com/kml/documentation/altitudemode)
enum AltitudeMode {
  RELATIVE_TO_SEA_FLOOR,
  CLAMP_TO_SEA_FLOOR,
  RELATIVE_TO_GROUND,
  CLAMP_TO_GROUND,
  ABSOLUTE
}

extension AltitudeModeExetesion on AltitudeMode {
  String get value {
    if (this == AltitudeMode.RELATIVE_TO_SEA_FLOOR) return 'relativeToSeaFloor';
    if (this == AltitudeMode.CLAMP_TO_SEA_FLOOR) return 'clampToSeaFloor';
    if (this == AltitudeMode.RELATIVE_TO_GROUND) return 'relativeToGround';
    if (this == AltitudeMode.CLAMP_TO_GROUND) return 'clampToGround';
    if (this == AltitudeMode.ABSOLUTE) return 'absolute';
    return null;
  }

  AltitudeMode fromString(String value) {
    if (value == AltitudeMode.RELATIVE_TO_SEA_FLOOR.value) {
      return AltitudeMode.RELATIVE_TO_SEA_FLOOR;
    } else if (value == AltitudeMode.CLAMP_TO_SEA_FLOOR.value) {
      return AltitudeMode.CLAMP_TO_SEA_FLOOR;
    } else if (value == AltitudeMode.RELATIVE_TO_GROUND.value) {
      return AltitudeMode.RELATIVE_TO_GROUND;
    } else if (value == AltitudeMode.CLAMP_TO_GROUND.value) {
      return AltitudeMode.CLAMP_TO_GROUND;
    } else if (value == AltitudeMode.ABSOLUTE.value) {
      return AltitudeMode.ABSOLUTE;
    }
    return null;
  }
}
