import 'package:flutter/material.dart';

class UserCenterPage extends StatelessWidget {
  const UserCenterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('用户中心'),
        ),
        body: Center(
          child: Text('用户中心'),
        ));
  }
}
