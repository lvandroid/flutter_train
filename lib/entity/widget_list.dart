class WidgetList {
  List<WidgetEntity> widgetList;

  WidgetList({this.widgetList});

  factory WidgetList.fromJson(List<dynamic> listJson) {
    List<WidgetEntity> widgetList =
        listJson.map((value) => WidgetEntity.fromJson(value)).toList();
    return WidgetList(widgetList: widgetList);
  }
}

class WidgetEntity {
  String imagePath;
  String title;
  String tip;

  WidgetEntity({this.imagePath, this.title, this.tip});

  factory WidgetEntity.fromJson(Map<String, dynamic> json) {
    return WidgetEntity(
        imagePath: json['imagePath'], title: json['title'], tip: json['tip']);
  }
}
