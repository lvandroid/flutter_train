import 'package:flutter/material.dart';
import 'package:flutter_train/ui/widget_list_page.dart';

class WidgetsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetsPageState();
  }
}

class _WidgetsPageState extends State<WidgetsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
//          title: Text('Flutter Widgets'),
//          centerTitle: true,
          title: SafeArea(
            child: TabBar(
              tabs: tabs,
              isScrollable: true,
            ),
          ),
        ),
        body: TabBarView(
          children: _getTabBarViews(),
        ),
      ),
    );
  }

  static const List<Widget> tabs = const <Widget>[
    Tab(
      text: "基础Widgets",
    ),
    Tab(
      text: 'Material',
      icon: null,
    ),
    Tab(
      text: 'Cupertino',
      icon: null,
    ),
    Tab(
      text: 'Layout',
    ),
    Tab(
      text: 'Text',
    ),
    Tab(
      text: 'Assets',
    ),
    Tab(
      text: 'Input',
    ),
    Tab(
      text: '动画和Motion',
    ),
    Tab(
      text: '交互模型',
    ),
    Tab(
      text: '样式',
    ),
    Tab(
      text: '绘制和效果',
    ),
    Tab(
      text: 'Async',
    ),
    Tab(
      text: '滚动',
    ),
    Tab(
      text: '辅助功能',
    ),
  ];

  List<Widget> _getTabBarViews() {
    List<Widget> tabbarviews = [];
    for (var i = 0; i < tabs.length; i++) {
      tabbarviews.add(WidgetListPage(
        type: i,
      ));
    }
    return tabbarviews;
  }

  @override
  bool get wantKeepAlive => true;
}
