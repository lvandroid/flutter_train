import 'package:flutter/material.dart';
import 'package:flutter_train/entity/widget_list.dart';
import 'package:flutter_train/ui/widgets_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  List<WidgetEntity> items = [];
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    WidgetsPage(),
    Center(
      child: Text('关于Flutter'),
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  var _pageController = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _widgetOptions.length,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) => _widgetOptions[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets), title: Text('Widgets')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('关于')),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      if (_selectedIndex != index) _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
