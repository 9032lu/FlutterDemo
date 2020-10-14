import 'package:flutter/material.dart';
import '../pages/DataPick.dart';
import '../pages/SearchPage.dart';
import '../pages/tabs/Category.dart';
import '../pages/tabs/HomePage.dart';
import '../pages/tabs/Settings.dart';
import '../pages/Tabs.dart';
import '../pages/FormPage.dart';
import '../pages/SearchDetail.dart';
import '../pages/TabbarController.dart';
import '../pages/User.dart';
import '../pages/TextFiledPage.dart';
import '../pages/Http.dart';
import '../pages/DioRequest.dart';

// 配置路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/category': (context) => CategoryPage(),
  '/home': (context) => HomePage(),
  '/setting': (context) => SettingsPage(),
  '/search': (context, {arguments}) => SearchePage(arguments: arguments),
  '/searchDetail': (context, {arguments}) =>
      searchDetailPage(arguments: arguments),
  '/tabbarController': (context) => TabbarControllerPage(),
  '/user': (context) => UserCenterPage(),
  '/textFiled': (context) => TextFiledPage(),
  '/dataPicker': (context) => DataPickerPage(),
  '/http': (context) => HttpPage(),
  '/dio': (context) => DioRequestPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
//统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
