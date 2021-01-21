import 'dart:io';
import 'package:kml_dart/kml_dart.dart';

void main() {
  List<Placemark> placemarks = [];
  List<Style> styles = [];
  List<Pair> pairs = [];
  List<StyleMap> stylesMap = [];
  Style styleNormal = Style(
    id: 'ponto_facil-normal',
    iconStyle: IconStyle(
        scale: 1.4, icon: IconKml.FromDefaultIcon(DefaultIconKml.YLW_PUSHPIN)),
  );
  Style styleHighlight = Style(
    id: 'ponto_facil-highlight',
    iconStyle: IconStyle(
        scale: 1.6, icon: IconKml.FromDefaultIcon(DefaultIconKml.YLW_PUSHPIN)),
  );
  styles..add(styleNormal)..add(styleHighlight);

  pairs
    ..add(Pair(key: PairType.NORMAL, styleUrl: styleNormal.id))
    ..add(Pair(key: PairType.HIGHLIGHT, styleUrl: styleHighlight.id));
  StyleMap styleMapPontoFacil = StyleMap(id: 'ponto_facil', pair: pairs);
  stylesMap.add(styleMapPontoFacil);

  placemarks.add(Placemark(
      lookAt: LookAt(latitude: -3.220368, longitude: -52.219024),
      name: 'ponto_facil',
      styleUrl: styleMapPontoFacil.id));

  Document document = Document(
      name: 'Teste ponto facil',
      placemarks: placemarks,
      style: styles,
      styleMap: stylesMap,
      description: 'Este é um projeto de teste');

  Kml kml = Kml(document: document);

  Document.fromJson(Map());

  File file = File('result/${kml.document.name}.kml');
  file.createSync(recursive: true);
  file.writeAsStringSync(KmlFile(kml: kml).KmlText);
}
