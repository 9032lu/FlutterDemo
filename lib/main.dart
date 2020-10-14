import 'package:flutter/material.dart';
import 'routes/Routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs()
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
