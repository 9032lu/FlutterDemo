import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:dio/dio.dart';

class DioRequestPage extends StatefulWidget {
  DioRequestPage({Key key}) : super(key: key);

  @override
  _DioRequestPageState createState() => _DioRequestPageState();
}

class _DioRequestPageState extends State<DioRequestPage> {
  List dataList = [];
  _getData() async {
    var url = 'https://xingtaiquan.xaqdy.com/api/index/index?platform=app';

    var dio = Dio();
    Response response = await dio.get(url);
    print(response.data);

    // var response = await http.get(url);
    if (response.statusCode == 200) {
      // var jsonResponse = convert.jsonDecode(response.body);

      // var itemCount = jsonResponse['totalItems'];
      print(response.data is Map);

      setState(() {
        this.dataList = response.data['data']['stick']['data'];
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    print('_getData');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio请求测试'),
      ),
      body: ListView.builder(
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
    );
  }
}
