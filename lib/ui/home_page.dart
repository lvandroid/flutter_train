import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_train/entity/widget_list.dart';
import 'package:flutter_train/ui/widgets_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WidgetEntity> items = [];
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[WidgetsPage(), WidgetsPage()];

  @override
  void initState() {
    super.initState();
    decoderWidgetList().then((onValue) {
      setState(() {
        items = onValue.widgetList;
      });
    });
  }

  Future<String> _loadWidgetsJson() async {
    return await rootBundle.loadString('assets/data/widgets.json');
  }

  Future<WidgetList> decoderWidgetList() async {
    String widgetListJson = await _loadWidgetsJson();
    List<dynamic> list = json.decode(widgetListJson);
    WidgetList widgetList = WidgetList.fromJson(list);
    widgetList.widgetList
        .forEach((widget) => print('widget title is ${widget.title}'));
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: Container(
//        padding: EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 4.0, crossAxisSpacing: 4.0,childAspectRatio: 1.05),
          itemBuilder: (context, index) {
            return _WidgetItemCard(items[index]);
          },
          itemCount: items.length,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets), title: Text('Widgets')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('关于')),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
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
      onTap: null,
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
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(
                bean.tip,
                style: TextStyle(color: Colors.black45, fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
