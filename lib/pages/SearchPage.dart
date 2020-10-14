import 'package:flutter/material.dart';

class SearchePage extends StatelessWidget {
  // String title;
  final arguments;
  SearchePage({this.arguments});

  // SearchePage({this.title = '搜索'});
  //  SearchePage(this.title,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('搜索页面'),
          ),
          body: Column(
            children: [
              Text('这是搜索页面${arguments != null ? arguments['id'] : '0'}'),
              RaisedButton(
                  child: Text('跳转到搜索详情页面'),
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: () {
                    Navigator.pushNamed(context, '/searchDetail',
                        arguments: {'id': 89});
                  })
            ],
          )),
    );
  }
}
