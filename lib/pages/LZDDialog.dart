import 'package:flutter/material.dart';
import 'dart:async';

class LZDDialogPage extends StatelessWidget {
  String title;
  String content;
  LZDDialogPage({this.title = '', this.content = ''});

  // const LZDDialogPage({Key key}) : super(key: key);
  Timer _timer;

  _showTimer(context) {
    _timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('关闭');
      t.cancel();

      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 150,
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.cancel),
                        onTap: () {
                          Navigator.pop(context);
                          if (this._timer.isActive) this._timer.cancel();
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  this.content,
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
