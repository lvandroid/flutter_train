import 'package:flutter/material.dart';
import 'package:flutter_train/assetsConstants/myColors.dart';
import 'package:flutter_train/assetsConstants/my_style.dart';
import 'package:flutter_train/assetsConstants/widget_code_block.dart';
import 'package:flutter_train/constants/widget_key_constants.dart';
import 'package:oktoast/oktoast.dart';

class ContainerPage extends StatefulWidget {
  String title;
  String tip;

  ContainerPage({this.title, this.tip});

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  AlignmentGeometry _alignment;

  EdgeInsets _padding;
  BoxConstraints _constraints;
  EdgeInsets _margin;
  static Matrix4 _transform;
  BoxDecoration _decoration;
  BoxDecoration _foregroundDecoration;
  Color _color = Colors.green;
  double _width = 300.0;
  double _height = 200.0;

  Container _container;
  Container _child;

  final double _propertyNameWidth = 100.0;
  final TextStyle _propertyNameStyle =
      TextStyle(color: Colors.white, fontSize: 20.0);
  final TextStyle codePinkStyle = TextStyle(color: MyColors.code_pink);
  final TextStyle codeYellowStyle = TextStyle(color: MyColors.code_yellow);
  String _widgetDescription;
  String _4_blank = '          ';
  String _8_blank = '            ';
  String _12_blank = '                    ';

  void _init() {
    _alignment = null;
    _padding = EdgeInsets.all(12.0);
    _constraints = null;
    _transform = null;
    _decoration = BoxDecoration(color: Colors.redAccent);
    _foregroundDecoration = null;
    _margin = EdgeInsets.all(12.0);
    _transform = null;
    _widgetDescription = CONTAINER_TIP + '\n\n点击下方代码块可修改样式(红色部分为我们操作的控件)';
  }

  Widget _initContainer() {
    _child = Container(
//      decoration: BoxDecoration(color: Colors.white),
      color: Colors.white,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          alignment: _alignment,
          child: Text(
            _widgetDescription,
            style: MyStyle.codeGreenStyle,
          ),
        ),
      ),
    );
    _container = Container(
      padding: _padding,
      decoration: _decoration,
//      _decoration,
      foregroundDecoration: _foregroundDecoration,
      height: _height,
      constraints: _constraints,
      margin: _margin,
      transform: _transform,
      child: _child,
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
    _initContainer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.green),
            child: _container,
          ),
          Divider(),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blueGrey,
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              children: _properties(),
            ),
//          _container,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _init();
            _initContainer();
          });
        },
        child: Text(
          '还原',
          style: MyStyle.codeWhiteStyle,
        ),
      ),
    );
  }

//  void _showDialog() async {
//    await showDialog(
//      context: context,
//      barrierDismissible: true,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          contentPadding: EdgeInsets.all(4.0),
//          content: _initContainer(),
//        );
//      },
//    );
//  }

  List<Widget> _properties() {
    return <Widget>[
//      Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
      GestureDetector(
        onTap: () {
          setState(() {
            _widgetDescription = '右上对齐模式';
            _alignment = Alignment.topRight;
            _initContainer();
          });
        },
        child: WidgetCodeBlock.alignmentTopRight,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _widgetDescription = '居中对齐模式';
            _alignment = Alignment.center;
            _initContainer();
          });
        },
        child: WidgetCodeBlock.alignmentCenter,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _padding = EdgeInsets.all(8.0);
            _widgetDescription = '$_8_blank↓\n→内边距为 8.0←\n$_8_blank↑';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.paddingAll,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _padding = EdgeInsets.fromLTRB(4.0, 8.0, 12.0, 16.0);
            _widgetDescription =
                '$_12_blank↓上内边距 8.0\n\n→左内边距 4.0$_8_blank右内边距 12.0←\n\n$_12_blank↑下内边距 16.0';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.paddingOnly,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _margin = EdgeInsets.all(8.0);
            _widgetDescription = '$_8_blank↑\n←外边距为 8.0→\n$_8_blank↓';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.marginAll,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _margin = EdgeInsets.fromLTRB(4.0, 8.0, 12.0, 16.0);
            _widgetDescription =
                '$_12_blank↑上外边距 8.0\n\n←左外边距 4.0$_8_blank右外边距 12.0→\n\n$_12_blank↓下外边距 16.0';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.marginOnly,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _decoration = BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(8.0));
            _widgetDescription = '背景设置为orangeAccent颜色，并设置为4.0弧度圆角';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.blockDecoration,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _constraints = BoxConstraints.expand(width: 200, height: 100);
            _widgetDescription = '添加expand模式的constraints ';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.blockConstraintsExpand,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _transform = Matrix4.rotationX(0.5);
            _widgetDescription = '添加transform X轴';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.blockTransformX,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _transform = Matrix4.rotationY(0.5);
            _widgetDescription = '添加transform Y轴';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.blockTransformY,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            _transform = Matrix4.rotationZ(0.5);
            _widgetDescription = '添加transform Z轴';
            _initContainer();
          });
        },
        child: WidgetCodeBlock.blockTransformZ,
      ),
    ];
  }
}
