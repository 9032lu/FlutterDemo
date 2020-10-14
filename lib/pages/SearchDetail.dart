import 'package:flutter/material.dart';

class searchDetailPage extends StatefulWidget {
  Map arguments;
  searchDetailPage({Key key, this.arguments}) : super(key: key);

  @override
  _searchDetailPageState createState() =>
      _searchDetailPageState(arguments: arguments);
}

class _searchDetailPageState extends State<searchDetailPage> {
  final Map arguments;
  _searchDetailPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索详情'),
      ),
      body: Center(
        child: Text('详情id=${arguments['id']}'),
      ),
    );
  }
}
