import 'package:kml_dart/src/models/enum/view_refresh_mode.enum.dart';

/// Defines an image associated with an Icon style or overlay.
/// The required `href` child element defines the location of
/// the image to be used as the overlay or as the icon for the placemark.
/// This location can either be on a local file system or a remote web server.
/// The `<gx:x>`, `<gx:y>`, `<gx:w>`, and `<gx:h>` elements are used to select
/// one icon from an image that contains multiple icons often referred to
/// as an icon palette.
/// [read more here](https://developers.google.com/kml/documentation/kmlreference#icon)
class IconKml {
  String id;
  String href;
  int gxX;
  int gxY;
  int gxW;
  int gxH;
  String refreshMode;
  double refreshInterval;
  ViewRefreshMode viewRefreshMode;
  double viewRefreshTime;
  double viewBoundScale;
  String viewFormat;
  String httpQuery;

  /// This constructor use the icon `URL`
  /// example:
  ///```
  /// IconKml(url);
  ///```
  IconKml(this.href,
      {this.id,
      this.gxX,
      this.gxY,
      this.gxW,
      this.gxH,
      this.refreshMode,
      this.refreshInterval,
      this.viewRefreshMode = ViewRefreshMode.NEVER,
      this.viewRefreshTime,
      this.viewBoundScale,
      this.viewFormat,
      this.httpQuery});

  /// This constructor use the enum `DefaultIconKml` with the defaults
  /// icons of google earth.
  /// example:
  ///```
  /// IconKml.FromDefaultIcon(DefaultIconKml.YLW_PUSHPIN);
  ///```
  /// this example will use the [yellow pushpin](http://maps.google.com/mapfiles/kml/pushpin/ylw-pushpin.png) icon
  IconKml.FromDefaultIcon(DefaultIconKml defaultIcon) {
    href = defaultIcon.value;
  }

  IconKml.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    href = json['href'];
    gxX = json['gx:x'];
    gxY = json['gx:y'];
    gxW = json['gx:w'];
    gxH = json['gx:h'];
    refreshMode = json['refreshMode'];
    refreshInterval = json['refreshInterval'];
    viewRefreshMode = json['viewRefreshMode'];
    viewRefreshTime = json['viewRefreshTime'];
    viewBoundScale = json['viewBoundScale'];
    viewFormat = json['viewFormat'];
    httpQuery = json['httpQuery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['href'] = this.href;
    data['gx:x'] = this.gxX;
    data['gx:y'] = this.gxY;
    data['gx:w'] = this.gxW;
    data['gx:h'] = this.gxH;
    data['refreshMode'] = this.refreshMode;
    data['refreshInterval'] = this.refreshInterval;
    data['viewRefreshMode'] = this.viewRefreshMode.value;
    data['viewRefreshTime'] = this.viewRefreshTime;
    data['viewBoundScale'] = this.viewBoundScale;
    data['viewFormat'] = this.viewFormat;
    data['httpQuery'] = this.httpQuery;
    return data;
  }
}

///An enum with several of the standard google earth icons
enum DefaultIconKml {
  YLW_PUSHPIN,
  BLUE_PUSHPIN,
  GRN_PUSHPIN,
  LTBLU_PUSHPIN,
  PINK_PUSHPIN,
  PURPLE_PUSHPIN,
  RED_PUSHPIN,
  WHT_PUSHPIN,
  PADDLE_A,
  PADDLE_B,
  PADDLE_C,
  PADDLE_D,
  PADDLE_E,
  PADDLE_F,
  PADDLE_G,
  PADDLE_H,
  PADDLE_I,
  PADDLE_J,
  PADDLE_K,
  PADDLE_L,
  PADDLE_M,
  PADDLE_N,
  PADDLE_O,
  PADDLE_P,
  PADDLE_Q,
  PADDLE_R,
  PADDLE_S,
  PADDLE_T,
  PADDLE_U,
  PADDLE_V,
  PADDLE_W,
  PADDLE_X,
  PADDLE_Y,
  PADDLE_Z,
  PADDLE_1,
  PADDLE_2,
  PADDLE_3,
  PADDLE_4,
  PADDLE_5,
  PADDLE_6,
  PADDLE_7,
  PADDLE_8,
  PADDLE_9,
  PADDLE_10,
}

extension DefaultIconKmlExtesion on DefaultIconKml {
  String get value {
    switch (this) {
      case DefaultIconKml.YLW_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/ylw-pushpin.png';
        break;
      case DefaultIconKml.BLUE_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/blue-pushpin.png';
        break;
      case DefaultIconKml.GRN_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/gnr-pushpin.png';
        break;
      case DefaultIconKml.LTBLU_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/ltblu-pushpin.png';
        break;
      case DefaultIconKml.PINK_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/pink-pushpin.png';
        break;
      case DefaultIconKml.RED_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/red-pushpin.png';
        break;
      case DefaultIconKml.WHT_PUSHPIN:
        return 'http://maps.google.com/mapfiles/kml/pushpin/wth-pushpin.png';
        break;
      case DefaultIconKml.PADDLE_A:
        return 'http://maps.google.com/mapfiles/kml/paddle/A.png';
        break;
      case DefaultIconKml.PADDLE_B:
        return 'http://maps.google.com/mapfiles/kml/paddle/B.png';
        break;
      case DefaultIconKml.PADDLE_C:
        return 'http://maps.google.com/mapfiles/kml/paddle/C.png';
        break;
      case DefaultIconKml.PADDLE_D:
        return 'http://maps.google.com/mapfiles/kml/paddle/D.png';
        break;
      case DefaultIconKml.PADDLE_E:
        return 'http://maps.google.com/mapfiles/kml/paddle/E.png';
        break;
      case DefaultIconKml.PADDLE_F:
        return 'http://maps.google.com/mapfiles/kml/paddle/F.png';
        break;
      case DefaultIconKml.PADDLE_G:
        return 'http://maps.google.com/mapfiles/kml/paddle/G.png';
        break;
      case DefaultIconKml.PADDLE_H:
        return 'http://maps.google.com/mapfiles/kml/paddle/H.png';
        break;
      case DefaultIconKml.PADDLE_I:
        return 'http://maps.google.com/mapfiles/kml/paddle/I.png';
        break;
      case DefaultIconKml.PADDLE_J:
        return 'http://maps.google.com/mapfiles/kml/paddle/J.png';
        break;
      case DefaultIconKml.PADDLE_K:
        return 'http://maps.google.com/mapfiles/kml/paddle/K.png';
        break;
      case DefaultIconKml.PADDLE_L:
        return 'http://maps.google.com/mapfiles/kml/paddle/L.png';
        break;
      case DefaultIconKml.PADDLE_M:
        return 'http://maps.google.com/mapfiles/kml/paddle/M.png';
        break;
      case DefaultIconKml.PADDLE_N:
        return 'http://maps.google.com/mapfiles/kml/paddle/N.png';
        break;
      case DefaultIconKml.PADDLE_O:
        return 'http://maps.google.com/mapfiles/kml/paddle/P.png';
        break;
      case DefaultIconKml.PADDLE_Q:
        return 'http://maps.google.com/mapfiles/kml/paddle/Q.png';
        break;
      case DefaultIconKml.PADDLE_R:
        return 'http://maps.google.com/mapfiles/kml/paddle/R.png';
        break;
      case DefaultIconKml.PADDLE_S:
        return 'http://maps.google.com/mapfiles/kml/paddle/S.png';
        break;
      case DefaultIconKml.PADDLE_T:
        return 'http://maps.google.com/mapfiles/kml/paddle/T.png';
        break;
      case DefaultIconKml.PADDLE_U:
        return 'http://maps.google.com/mapfiles/kml/paddle/U.png';
        break;
      case DefaultIconKml.PADDLE_V:
        return 'http://maps.google.com/mapfiles/kml/paddle/V.png';
        break;
      case DefaultIconKml.PADDLE_W:
        return 'http://maps.google.com/mapfiles/kml/paddle/W.png';
        break;
      case DefaultIconKml.PADDLE_X:
        return 'http://maps.google.com/mapfiles/kml/paddle/X.png';
        break;
      case DefaultIconKml.PADDLE_Y:
        return 'http://maps.google.com/mapfiles/kml/paddle/Y.png';
        break;
      case DefaultIconKml.PADDLE_Z:
        return 'http://maps.google.com/mapfiles/kml/paddle/Z.png';
        break;
      case DefaultIconKml.PADDLE_1:
        return 'http://maps.google.com/mapfiles/kml/paddle/1.png';
        break;
      case DefaultIconKml.PADDLE_2:
        return 'http://maps.google.com/mapfiles/kml/paddle/2.png';
        break;
      case DefaultIconKml.PADDLE_3:
        return 'http://maps.google.com/mapfiles/kml/paddle/3.png';
        break;
      case DefaultIconKml.PADDLE_4:
        return 'http://maps.google.com/mapfiles/kml/paddle/4.png';
        break;
      case DefaultIconKml.PADDLE_5:
        return 'http://maps.google.com/mapfiles/kml/paddle/5.png';
        break;
      case DefaultIconKml.PADDLE_6:
        return 'http://maps.google.com/mapfiles/kml/paddle/6.png';
        break;
      case DefaultIconKml.PADDLE_7:
        return 'http://maps.google.com/mapfiles/kml/paddle/7.png';
        break;
      case DefaultIconKml.PADDLE_8:
        return 'http://maps.google.com/mapfiles/kml/paddle/8.png';
        break;
      case DefaultIconKml.PADDLE_9:
        return 'http://maps.google.com/mapfiles/kml/paddle/9.png';
        break;
      case DefaultIconKml.PADDLE_10:
        return 'http://maps.google.com/mapfiles/kml/paddle/10.png';
        break;
      default:
        return null;
    }
  }
}
