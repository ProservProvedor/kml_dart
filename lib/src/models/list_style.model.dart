import 'package:kml_dart/src/models/item_Icon.model.dart';

class ListStyle {
  String id;
  String listItemType; // TODO: to enum
  List<ItemIcon> itemIcon;
  String bgColor;
  String maxSnippetLines;

  ListStyle(
      {this.listItemType, this.itemIcon, this.bgColor, this.maxSnippetLines});

  ListStyle.fromJson(Map<String, dynamic> json) {
    id = json['-id'];
    listItemType = json['listItemType'];
    if (json['ItemIcon'] != null) {
      itemIcon = List<ItemIcon>();
      json['ItemIcon'].forEach((v) {
        itemIcon.add(ItemIcon.fromJson(v));
      });
    }
    bgColor = json['bgColor'];
    maxSnippetLines = json['maxSnippetLines'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-id'] = this.id;
    data['listItemType'] = this.listItemType;
    if (this.itemIcon != null) {
      data['ItemIcon'] = this.itemIcon.map((v) => v.toJson()).toList();
    }
    data['bgColor'] = this.bgColor;
    data['maxSnippetLines'] = this.maxSnippetLines;
    return data;
  }
}
