import 'package:flutter/material.dart';
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DataPickerPage extends StatefulWidget {
  DataPickerPage({Key key}) : super(key: key);

  @override
  _DataPickerPageState createState() => _DataPickerPageState();
}

class _DataPickerPageState extends State<DataPickerPage> {
  List<Map> imageList = [
    {
      'url':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602501828308&di=e200074e71abf7a2daccf087788d2270&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F56%2F12%2F01300000164151121576126282411.jpg'
    },
    {
      'url':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602501828308&di=52d2f26c47e71682d6f488df486a7e98&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg'
    },
    {
      'url':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602501828308&di=adbf3913bfc5865ba7e71adbfab94ac6&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F36%2F48%2F19300001357258133412489354717.jpg'
    },
    {
      'url':
          'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3557543371,89408500&fm=26&gp=0.jpg'
    },
    {
      'url':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602501924714&di=694079896afd659a6da94d2949e075f8&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F25%2F99%2F19300000421423134190997943822.jpg'
    },
    {
      'url':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602501924713&di=aa82c214760342f53c2c1632e5ee6ec4&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F43%2F83%2F01300000241358124822839175242.jpg'
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          Container(
              // height: 200,
              child: AspectRatio(
            aspectRatio: 16 / 9,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  imageList[index]['url'],
                  fit: BoxFit.fill,
                );
              },
              autoplay: true,
              itemCount: this.imageList.length,
              pagination: SwiperPagination(),
              // pagination:
              //     new SwiperPagination(builder: SwiperPagination.fraction),
              // control: new SwiperControl(),
            ),
          )),
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('2020-10-12'), Icon(Icons.arrow_drop_down)],
            ),
            onTap: () {
              print('asdasd');
            },
          ),
          Container(
              // height: 200,
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.network(
                        "http://via.placeholder.com/288x188",
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: 10,
                    itemWidth: 300.0,
                    itemHeight: 400.0,
                    layout: SwiperLayout.TINDER,
                  ))),
        ],
      ),
    );
  }
}
