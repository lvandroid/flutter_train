import 'package:flutter/material.dart';

class WidgetsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _WidgetsPageState();
  }
}

class _WidgetsPageState extends State<WidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(tabs: <Widget>[
          Tab(
            text: '基础Widgets',
          ),
          Tab(
            text: 'Material',
          ),
          Tab(
            text: 'Cupertino',
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
        ]),
        TabBarView(),
      ],
    );
  }
}
