import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  Widget _leading;
  bool _automaticallyImplyLeading = true;
  Text _title = Text('AppBar');
  List<Widget> _actions;
  Widget _flexibleSpace;
  PreferredSizeWidget _bottom;
  double _elevation;
  ShapeBorder _shape;
  Color _backgroundColor = Colors.blue;
  Brightness _brightness = Brightness.light;
  IconThemeData _iconTheme;
  IconThemeData _actionsIconTheme;
  TextTheme _textTheme;
  bool _primary = false;
  bool _centerTitle;
  double _titleSpacing = NavigationToolbar.kMiddleSpacing;
  double _toolbarOpacity = 1.0;
  double _bottomOpacity = 1.0;

  AppBar _appBar;

  @override
  void initState() {
    super.initState();
    _initAppBar();
  }

  void _initAppBar() {
    _appBar = AppBar(
      leading: _leading,
      automaticallyImplyLeading: _automaticallyImplyLeading,
      title: _title,
      actions: _actions,
      flexibleSpace: _flexibleSpace,
      bottom: _bottom,
      elevation: _elevation,
      shape: _shape,
      backgroundColor: _backgroundColor,
      brightness: _brightness,
      iconTheme: _iconTheme,
      actionsIconTheme: _actionsIconTheme,
      textTheme: _textTheme,
      primary: _primary,
      centerTitle: _centerTitle,
      titleSpacing: _titleSpacing,
      toolbarOpacity: _toolbarOpacity,
      bottomOpacity: _bottomOpacity,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Center(),
      floatingActionButton:
          FloatingActionButton(onPressed: () => _appbarDialog()),
    );
  }

  void _appbarDialog() async {
    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
//          return SimpleDialog(
//            title: Text('AppBar'),
//            children: <Widget>[
//              SimpleDialogOption(child: const Text('取消'),),
//              SimpleDialogOption(child: const Text('确定'),),
//            ],
//          );
          return AlertDialog(
              contentPadding: EdgeInsets.all(8.0),
              content: Scaffold(
                  appBar: _appBar,
                  body: Column(
                    children: <Widget>[],
                  )));
        });
  }
}
