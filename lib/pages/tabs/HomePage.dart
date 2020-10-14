import 'package:flutter/material.dart';
import '../LZDDialog.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  _alterDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('按实际大陆上的两颗'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, 'cancle');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定'))
            ],
          );
        });

    print(result);
  }

  // ignore: non_constant_identifier_names
  _SimpleAlterDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('提示信息'),
            children: [
              SimpleDialogOption(
                child: Text('A'),
                onPressed: () {
                  print('A');
                  Navigator.pop(context, '1');
                },
              ),
              SimpleDialogOption(
                child: Text('B'),
                onPressed: () {
                  print('B');
                  Navigator.pop(context, '2');
                },
              ),
              SimpleDialogOption(
                child: Text('C'),
                onPressed: () {
                  print('C');
                  Navigator.pop(context, '3');
                },
              ),
            ],
          );
        });

    print(result);
  }

  _ModelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  title: Text('分享1'),
                  onTap: () {
                    print('分享1');
                    Navigator.pop(context, '1');
                  },
                ),
                ListTile(
                  title: Text('分享2'),
                  onTap: () {
                    print('分享2');
                    Navigator.pop(context, '2');
                  },
                ),
                ListTile(
                  title: Text('分享3'),
                  onTap: () {
                    print('分享4');
                    Navigator.pop(context, '4');
                  },
                ),
                ListTile(
                  title: Text('分享5'),
                  onTap: () {
                    print('分享5');
                    Navigator.pop(context, '5');
                  },
                ),
                ListTile(
                  title: Text('分享6'),
                  onTap: () {
                    print('分享6');
                    Navigator.pop(context, '6');
                  },
                ),
              ],
            ),
          );
        });

    print(result);
  }

  _showToast() {
    Toast.show("Show Short Toast", context,
        backgroundColor: Colors.green, backgroundRadius: 10, duration: 3);
  }

  _showMyDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return LZDDialogPage(
            title: '标题',
            content: '阿里斯柯达；啦阿里斯柯达；拉开；SD卡收到；阿里斯顿；啦；十六大；上；达拉斯答案；十六大上达拉斯多了',
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('首页'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Chip(label: Text("${this.count}")),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('增加'),
            onPressed: () {
              // print(this.count);
              setState(() {
                this.count++;
              });
            },
          ),
          RaisedButton(
            child: Text('跳转到tabbarcontroller'),
            onPressed: () {
              Navigator.pushNamed(context, '/tabbarController');
              print('跳转到tabbarcontroller');
            },
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text('跳转表单页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/textFiled');
            },
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text('轮播图'),
            onPressed: () {
              Navigator.pushNamed(context, '/dataPicker');
            },
          ),
          Wrap(
            children: [
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('dialog'),
                onPressed: _alterDialog,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('simpleDialog'),
                onPressed: _SimpleAlterDialog,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('actionsheet'),
                onPressed: _ModelBottomSheet,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('toast'),
                onPressed: _showToast,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('自定义dialog'),
                onPressed: _showMyDialog,
              ),
            ],
          )
        ],
      )),
      drawer: Drawer(
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: DrawerHeader(
                  child: Text(
                    '你好',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602451240173&di=ff6d313cb0143c6b9cca5bdb5200adca&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D1484500186%2C1503043093%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1280%26h%3D853',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
            ]),
            Divider(color: Colors.black),
            ListTile(
              title: Text('我的空间'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(color: Colors.purple),
            ListTile(
              title: Text('用户中心'),
              leading: CircleAvatar(
                child: Icon(Icons.center_focus_strong),
              ),
              onTap: () {
                Navigator.of(context).pop;
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(color: Colors.green),
            ListTile(
              title: Text('设置中心'),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    '你好',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  accountEmail: Text('12123@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2577576757,3841266884&fm=26&gp=0.jpg'),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602451240173&di=ff6d313cb0143c6b9cca5bdb5200adca&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D1484500186%2C1503043093%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1280%26h%3D853',
                          ),
                          fit: BoxFit.cover)),
                  otherAccountsPictures: [
                    Image.network(
                        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1548410483,2227188635&fm=26&gp=0.jpgc'),
                    Image.network(
                        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1548410483,2227188635&fm=26&gp=0.jpgc')
                  ],
                ),
              ),
            ]),
            Divider(color: Colors.black),
            ListTile(
              title: Text('我的空间'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(color: Colors.purple),
            ListTile(
              title: Text('用户中心'),
              leading: CircleAvatar(
                child: Icon(Icons.center_focus_strong),
              ),
            ),
            Divider(color: Colors.green),
            ListTile(
              title: Text('设置中心'),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
