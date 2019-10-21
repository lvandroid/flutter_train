import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_train/constants/widget_key_constants.dart';
import 'package:flutter_train/entity/widget_list.dart';
import 'package:flutter_train/widgets/base/container_page.dart';

class WidgetListPage extends StatefulWidget {
  int type;

  WidgetListPage({this.type});

  @override
  State<StatefulWidget> createState() {
    return _WidgetListPageState();
  }
}

class _WidgetListPageState extends State<WidgetListPage>
    with AutomaticKeepAliveClientMixin {
  List<WidgetEntity> items = [];

  Future<String> _loadWidgetsJson() async {
    switch (widget.type) {
      case 0:
        return await rootBundle.loadString('assets/data/base.json');
      case 1:
        return await rootBundle.loadString('assets/data/material.json');
      case 2:
        return await rootBundle.loadString('assets/data/cupertino.json');
      case 3:
        return await rootBundle.loadString('assets/data/layout.json');
      case 4:
        return await rootBundle.loadString('assets/data/text.json');
      case 5:
        return await rootBundle.loadString('assets/data/assets.json');
      case 6:
        return await rootBundle.loadString('assets/data/input.json');
      case 7:
        return await rootBundle.loadString('assets/data/anim.json');
      case 8:
        return await rootBundle.loadString('assets/data/interaction.json');
      case 9:
        return await rootBundle.loadString('assets/data/style.json');
      case 10:
        return await rootBundle.loadString('assets/data/draw.json');
      case 11:
        return await rootBundle.loadString('assets/data/async.json');
      case 12:
        return await rootBundle.loadString('assets/data/scroll.json');
      case 13:
        return await rootBundle.loadString('assets/data/access.json');
    }
  }

  @override
  void initState() {
    super.initState();
    decoderWidgetList().then((value) {
      if (mounted) {
        setState(() {
          items = value.widgetList;
        });
      }
    });
  }

  Future<WidgetList> decoderWidgetList() async {
    String widgetListJson = await _loadWidgetsJson();
    List<dynamic> list = json.decode(widgetListJson);
    WidgetList widgetList = WidgetList.fromJson(list);
    return widgetList;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//        padding: EdgeInsets.all(4.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.05),
        itemBuilder: (context, index) {
          return _WidgetItemCard(items[index]);
        },
        itemCount: items.length,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _WidgetItemCard extends StatefulWidget {
  WidgetEntity bean;

  _WidgetItemCard(this.bean);

  @override
  State<StatefulWidget> createState() {
    return _WidgetItemCardState();
  }
}

class _WidgetItemCardState extends State<_WidgetItemCard> {
  @override
  Widget build(BuildContext context) {
    WidgetEntity bean = widget.bean;
    return GestureDetector(
      onTap: _onTap,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                bean.imagePath,
                width: 100.0,
                height: 100.0,
              ),
              Text(
                bean.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                bean.tip,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black45, fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var _pageRouter = {
    CONTAINER: ContainerPage(title: CONTAINER, tip: CONTAINER_TIP),
  };

  void _onTap() {
    WidgetEntity bean = widget.bean;
    String title = bean.title;
    try {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => _pageRouter[title]));
    } catch (e) {
      print(e);
    }
  }
}
