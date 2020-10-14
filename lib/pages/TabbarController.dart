import 'package:flutter/material.dart';

class TabbarControllerPage extends StatefulWidget {
  TabbarControllerPage({Key key}) : super(key: key);

  @override
  _TabbarControllerPageState createState() => _TabbarControllerPageState();
}

class _TabbarControllerPageState extends State<TabbarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('tabbarController'),
          bottom: TabBar(controller: _tabController, tabs: <Widget>[
            Tab(text: '热门'),
            Tab(text: '推荐1'),
            Tab(text: '推荐2'),
            Tab(text: '推荐3'),
          ]),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: [Text('热门'), Text('推荐1'), Text('推荐2'), Text('推荐3')],
        ));
  }
}
