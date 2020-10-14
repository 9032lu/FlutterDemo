import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List dataList = [];

  _getData() async {
    var url = 'https://xingtaiquan.xaqdy.com/api/index/index?platform=app';

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      // var itemCount = jsonResponse['totalItems'];
      print('result:${jsonResponse['data']['stick']['data']}');

      setState(() {
        this.dataList = jsonResponse['data']['stick']['data'];
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    print('_getData');
  }

  _postData() {
    print('_postData');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http请求demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(child: Text('get请求'), onPressed: _getData),
            SizedBox(
              height: 10,
            ),
            RaisedButton(child: Text('post请求数据'), onPressed: _postData),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: this.dataList.length == 0
                  ? Text("加载中...")
                  : ListView.builder(
                      itemCount: this.dataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            '${this.dataList[index]['title']}',
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            '${this.dataList[index]['content']}',
                            maxLines: 2,
                            style: TextStyle(fontSize: 12),
                          ),
                          leading: Container(
                            // height: 60,
                            // width: 40,
                            child: Image.network(
                              '${this.dataList[index]['img'].length > 0 ? this.dataList[index]['img'][0] : 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3557543371,89408500&fm=26&gp=0.jpg'}',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            Toast.show(
                                '${this.dataList[index]['id']}：${this.dataList[index]['title']}',
                                context);
                          },
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
