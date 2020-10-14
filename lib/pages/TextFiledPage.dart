import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  TextFiledPage({Key key}) : super(key: key);

  @override
  _TextFiledPageState createState() => _TextFiledPageState();
}

class _TextFiledPageState extends State<TextFiledPage> {
  var _userName = new TextEditingController(); //初始化表单赋值使用
  var _passWord;
  var flag = true;
  var sex = 1;
  var radioTitle = 1;
  var switchBox = true;

  @override
  @override
  void initState() {
    super.initState();
    this._userName.text = '张三';
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('输入框'),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // TextField(
                //   decoration: InputDecoration(
                //     hintText: '请输入用户名',
                //   ),
                //   controller: _userName,
                //   onChanged: (value) {
                //     setState(() {
                //       _userName.text = value;
                //     });
                //   },
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     hintText: '密码',
                //   ),
                //   // controller: _passWord,
                //   onChanged: (value) {
                //     setState(() {
                //       _passWord = value;
                //     });
                //   },
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   child: RaisedButton(
                //     child: Text('登录'),
                //     onPressed: () {
                //       print('${this._userName.text}\n${this._passWord}');
                //     },
                //     color: Colors.blue,
                //     textColor: Colors.white,
                //   ),
                //   height: 40,
                //   width: double.infinity,
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: this.flag,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          this.flag = value;
                        });
                      },
                    ),
                    Text(this.flag == true ? '选中' : '未选中'),
                  ],
                ),
                Divider(color: Colors.red),
                CheckboxListTile(
                    value: this.flag,
                    title: Text('标题'),
                    subtitle: Text('子标题'),
                    selected: this.flag,
                    onChanged: (v) {
                      setState(() {
                        this.flag = v;
                      });
                    }),
                Divider(color: Colors.red),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: this.sex,
                        onChanged: (v) {
                          setState(() {
                            this.sex = v;
                          });
                        }),
                    Text('男'),
                    SizedBox(
                      width: 20,
                    ),
                    Radio(
                        value: 2,
                        groupValue: this.sex,
                        onChanged: (v) {
                          setState(() {
                            this.sex = v;
                          });
                        }),
                    Text('女'),
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                RadioListTile(
                  value: 1,
                  groupValue: this.radioTitle,
                  onChanged: (v) {
                    setState(() {
                      this.radioTitle = v;
                    });
                  },
                  selected: this.radioTitle == 1,
                  title: Text('标题'),
                  subtitle: Text('子标题'),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: this.radioTitle,
                  selected: this.radioTitle == 2,
                  secondary: Icon(Icons.access_alarm_rounded),
                  onChanged: (v) {
                    setState(() {
                      this.radioTitle = v;
                    });
                  },
                  title: Text('标题1'),
                  subtitle: Text('子标题1'),
                ),

                Switch(
                    value: this.switchBox,
                    onChanged: (v) {
                      setState(() {
                        this.switchBox = v;
                        print(v);
                      });
                    })
              ],
            )));
  }
}

class TextFiledDemo extends StatelessWidget {
  const TextFiledDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '请输入搜索内容', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              hintText: '多行文本',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              // obscureText: false,
              decoration: InputDecoration(
            hintText: '用户名',
            border: OutlineInputBorder(),
            labelText: '用户名',
          )),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: '密码',
                // border: OutlineInputBorder(),
                labelText: '密码',
                icon: Icon(Icons.phone)),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
