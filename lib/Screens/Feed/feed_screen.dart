import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:so_demo/Screens/Feed/components/body.dart';
import 'package:so_demo/profile.dart';

class FeedScreen extends StatelessWidget {
  final Profile myprofile;

  const FeedScreen({Key key, this.myprofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //System.Chorome - устанавливает цвет нижнего бара(Navigation Bar)
    // верхний бар - Status Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFFAFAFA),
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        myprofile: myprofile,
      ),
    );
  }
}
