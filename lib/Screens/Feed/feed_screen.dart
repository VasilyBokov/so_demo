import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:so_demo/Screens/Feed/components/body.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //System.Chorome - устанавливает цвет нижнего бара(Navigation Bar)
    // верхний бар - Status Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFFAFAFA),
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
