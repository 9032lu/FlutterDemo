import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Settings.dart';
import 'tabs/HomePage.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pagesList = [HomePage(), CategoryPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter Demo'),
        //   backgroundColor: Colors.red,
        // ),
        floatingActionButton: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                this._currentIndex = 1;
              });
            },
            backgroundColor: this._currentIndex == 1 ? Colors.blue : Colors.red,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        body: this._pagesList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          ],
          // iconSize: 36, //icon大小
          // fixedColor: Colors.red, //选中颜色
          currentIndex: this._currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            print(index);
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
