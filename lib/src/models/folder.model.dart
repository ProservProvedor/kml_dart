import 'package:kml_dart/kml_dart.dart';
import 'package:kml_dart/src/models/atom_link.model.dart';
import 'package:kml_dart/src/models/placemark.model.dart';
import 'package:kml_dart/src/_bool_extersion.dart';
import 'package:kml_dart/src/models/snippet.model.dart';

/// A Folder is used to arrange other Features hierarchically
/// (Folders, Placemarks, NetworkLinks, or Overlays).
/// A Feature is visible only if it and all its ancestors are visible.
/// [read more here](https://developers.google.com/kml/documentation/kmlreference#folder)
class Folder {
  String id;
  String name;
  //BoolInt visibility;
  bool visibility;
  //BoolInt open;
  bool open;
  String atomAuthor;
  AtomLink atomLink;
  String address;
  String xalAddressDetails;
  String phoneNumber;
  Snippet snippet;
  String description;
  String abstractView;
  String timePrimitive;
  String styleUrl;
  String styleSelector;
  String region;
  String metadata;
  String extendedData;

  List<Document> document;
  List<Folder> folders;
  List<Placemark> placemarks;

  Folder(
      {this.id,
      this.name,
      //this.visibility = BoolInt.TRUE,
      this.visibility = true,
      //this.open = BoolInt.FALSE,
      this.atomAuthor,
      String atomLink,
      this.address,
      this.xalAddressDetails,
      this.phoneNumber,
      this.snippet,
      this.description,
      this.abstractView,
      this.timePrimitive,
      this.styleUrl,
      this.styleSelector,
      this.region,
      this.metadata,
      this.extendedData,
      this.folders,
      this.placemarks,
      this.document}) {
    if (atomLink != null) {
      this.atomLink = AtomLink(href: atomLink);
    }
  }

  Folder.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    name = json['name'];
    visibility = json['visibility'];
    open = json['open'];
    atomAuthor = json['atom:author'];
    address = json['address'];
    xalAddressDetails = json['xal:AddressDetails'];
    phoneNumber = json['phoneNumber'];
    description = json['description'];
    abstractView = json['AbstractView'];
    timePrimitive = json['TimePrimitive'];
    styleUrl = json['styleUrl'];
    styleSelector = json['StyleSelector'];
    region = json['Region'];
    metadata = json['Metadata'];
    extendedData = json['ExtendedData'];
    atomLink =
        json['atom:link'] != null ? AtomLink.fromJson(json['atom:link']) : null;
    snippet =
        json['Snippet'] != null ? Snippet.fromJson(json['Snippet']) : null;

    if (json['Document'] != null) {
      document = List<Document>();
      json['Document'].forEach((v) {
        document.add(Document.fromJson(v));
      });
    }
    if (json['Folder'] != null) {
      folders = List<Folder>();
      json['Folder'].forEach((v) {
        folders.add(Folder.fromJson(v));
      });
    }
    if (json['Placemark'] != null) {
      placemarks = List<Placemark>();
      json['Placemark'].forEach((v) {
        placemarks.add(Placemark.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['name'] = this.name;
    //data['visibility'] = this.visibility.value;
    data['visibility'] = this.visibility.toInt;
    //data['open'] = this.open.value;
    data['open'] = this.open.toInt;
    data['atom:author'] = this.atomAuthor;
    if (this.atomLink != null) {
      data['atom:link'] = this.atomLink.toJson();
    }
    data['address'] = this.address;
    data['xal:AddressDetails'] = this.xalAddressDetails;
    data['phoneNumber'] = this.phoneNumber;
    if (this.snippet != null) {
      data['Snippet'] = this.snippet.toJson();
    }
    data['description'] = this.description;
    data['AbstractView'] = this.abstractView;
    data['TimePrimitive'] = this.timePrimitive;
    data['styleUrl'] = this.styleUrl;
    data['StyleSelector'] = this.styleSelector;
    data['Region'] = this.region;
    data['Metadata'] = this.metadata;
    data['ExtendedData'] = this.extendedData;
    if (this.document != null) {
      data['Document'] = this.document.map((v) => v.toJson()).toList();
    }
    if (this.folders != null) {
      data['Folder'] = this.folders.map((v) => v.toJson()).toList();
    }
    if (this.placemarks != null) {
      data['Placemark'] = this.placemarks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
