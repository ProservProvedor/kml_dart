import 'package:kml_dart/src/models/kml.model.dart';
import 'package:xml/xml.dart';

class KmlFile {
  Kml kml;

  KmlFile({this.kml});

  KmlFile.fromJson(Map<String, dynamic> json) {
    kml = json['kml'] != null ? Kml.fromJson(json['kml']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.kml != null) {
      data['kml'] = this.kml.toJson();
    }
    return data;
  }

  String get KmlText {
    _BuilderKml builderXml = _BuilderKml();
    return builderXml.builder(toJson());
  }
}

class _BuilderKml {
  final _xmlBuilder = XmlBuilder();
  final acceptNulls;
  _BuilderKml({this.acceptNulls = false}) {
    _xmlBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8"',
    );
  }

  String builder(Map<String, dynamic> map) {
    _builderMap(map);
    final bookshelfXml = _xmlBuilder.buildDocument();
    return bookshelfXml.toXmlString(pretty: true);
  }

  void _builderList(String key, List list) {
    list.forEach((element) {
      _xmlBuilder.element(key, nest: () {
        if (element is Map) {
          _builderMap(element);
        } else if (element is List) {
          _builderList(key, element);
        } else {
          _builderText(element.toString());
        }
      });
    });
  }

  void _builderText(String text) {
    return _xmlBuilder.text(text);
  }

  void _builderMap(Map<String, dynamic> map) {
    _getAttributes(map).forEach((key, value) {
      _xmlBuilder.attribute(key, value);
    });
    map.forEach((key, value) {
      if (!key.startsWith('-')) {
        if (value is Map) {
          _xmlBuilder.element(key, nest: () => _builderMap(value));
        } else if (value is List) {
          _builderList(key, value);
        } else {
          if (acceptNulls || value != null) {
            if (key != '#value') {
              _xmlBuilder.element(key,
                  nest: () => _builderText(value.toString()));
            } else {
              _xmlBuilder.text(value);
            }
          }
        }
      }
    });
  }

  Map<String, String> _getAttributes(Map<String, dynamic> map) {
    Map<String, String> attributesMap = {};
    map.forEach((key, value) {
      if (key.startsWith('-') && value != null) {
        key = key.replaceFirst('-', '');
        attributesMap[key] = value.toString();
      }
    });
    return attributesMap;
  }
}
