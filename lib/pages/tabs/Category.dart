import 'package:flutter/material.dart';
import '../FormPage.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
              child: Text('跳转到搜索页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, '/search',
                    arguments: {'id': 12131231});

                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => SearchePage(title: '表单')));
              }),
          RaisedButton(
              child: Text('跳转到表单页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FormPage()));
              }),
          RaisedButton(
              child: Text('http请求数据'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, '/http');

                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => FormPage()));
              }),
          RaisedButton(
              child: Text('Dio请求数据'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, '/dio');
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => FormPage()));
              })
        ],
      ),
    );
  }
}
