import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('数据1'),
            subtitle: Text('子标题1'),
          ),
          ListTile(
            title: Text('数据1'),
            subtitle: Text('子标题1'),
          ),
          ListTile(
            title: Text('数据1'),
            subtitle: Text('子标题1'),
          ),
          ListTile(
            title: Text('数据1'),
            subtitle: Text('子标题1'),
          ),
        ],
      ),
    );
  }
}
