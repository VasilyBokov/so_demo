import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:so_demo/Screens/EventPage/components/body_f.dart';

class EventPageWithFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //System.Chorome - устанавливает цвет нижнего бара(Navigation Bar)
    // верхний бар - Status Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
    ));
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: BodyWithFoto(),
    );
  }
}
