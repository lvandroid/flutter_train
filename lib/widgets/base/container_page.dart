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
  AlignmentGeometry _alignment = Alignment.center;

  EdgeInsets _padding;
  double _decorationCircular = 0.0;
  Color _decorationColor = Colors.orange;
  Color _foregroundDecorationColor = Colors.transparent;
  static double _constraintsWidth = 300.0;
  static double _constraintsHeight = 200.0;
  BoxConstraints _constraints = BoxConstraints.expand(
      width: _constraintsWidth, height: _constraintsHeight);
  EdgeInsets _margin;
  static Matrix4 _transformX = Matrix4.rotationX(20.0);
  static Matrix4 _transformY = Matrix4.rotationY(20.0);
  static Matrix4 _transformZ = Matrix4.rotationZ(20.0);
  static Matrix4 _transform = Matrix4.copy(_transformX);
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

  void _init() {
    _alignment = Alignment.center;
    _padding = null;
    _decorationCircular = 0.0;
    _decorationColor = Colors.orange;
    _foregroundDecorationColor = Colors.transparent;
    _constraintsWidth = 300.0;
    _constraintsHeight = 200.0;
    _constraints = null;
//        BoxConstraints.expand(
//        width: _constraintsWidth, height: _constraintsHeight);
    _margin = null;
    _transformX = Matrix4.rotationX(20.0);
    _transformY = Matrix4.rotationY(20.0);
    _transformZ = Matrix4.rotationZ(20.0);
    _transform = null;
  }

  Widget _initContainer() {
    _child = Container(
//      decoration: BoxDecoration(color: Colors.white),
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            CONTAINER_TIP,
            style: MyStyle.codeWhiteStyle,
          ),
        ));
    _container = Container(
      alignment: _alignment,
      padding: _padding,
//      color: _color,
      decoration: BoxDecoration(
          color: _decorationColor,
          borderRadius: BorderRadius.circular(_decorationCircular)),
      foregroundDecoration: BoxDecoration(color: _foregroundDecorationColor),
//      width: _width,
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
          Container(
//              decoration: BoxDecoration(color: MyColors.code_bg),
//              padding: EdgeInsets.all(8.0),
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _padding = EdgeInsets.all(8.0);
                _initContainer();
              });
            },
            child: WidgetCodeBlock.BLOCK_PADDING_ALL,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _padding = EdgeInsets.fromLTRB(4.0, 8.0, 12.0, 16.0);
                _initContainer();
              });
            },
            child: WidgetCodeBlock.BLOCK_PADDING_ONLY,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _margin = EdgeInsets.all(8.0);
                _initContainer();
              });
            },
            child: WidgetCodeBlock.BLOCK_MARGIN_ALL,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _margin = EdgeInsets.fromLTRB(4.0, 8.0, 12.0, 16.0);
                _initContainer();
              });
            },
            child: WidgetCodeBlock.BLOCK_MARGIN_ONLY,
          )
        ],
      ),
    ];
  }
}
