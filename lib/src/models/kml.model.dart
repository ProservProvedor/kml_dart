import 'package:kml_dart/src/models/document.model.dart';

class Kml {
  final String xmlns = 'http://www.opengis.net/kml/2.2';
  final String xmlnsGx = 'http://www.google.com/kml/ext/2.2';
  final String xmlnsKml = 'http://www.opengis.net/kml/2.2';
  final String xmlnsAtom = 'http://www.w3.org/2005/Atom';
  final String xmlnsXal = 'urn:oasis:names:tc:ciq:xsdschema:xAL:2.0';

  Document document;
  Kml({this.document});

  Kml.fromJson(Map<String, dynamic> json) {
    document =
        json['Document'] != null ? Document.fromJson(json['Document']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-xmlns'] = this.xmlns;
    data['-xmlns:gx'] = this.xmlnsGx;
    data['-xmlns:kml'] = this.xmlnsKml;
    data['-xmlns:atom'] = this.xmlnsAtom;
    data['-xmlns:xal'] = this.xmlnsXal;
    if (this.document != null) {
      data['Document'] = this.document.toJson();
    }
    return data;
  }
}
