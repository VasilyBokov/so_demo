import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:so_demo/Screens/Profile/components/body.dart';
import 'package:so_demo/components/appbar_nick.dart';

import '../../profile.dart';

class ProfileScreen extends StatelessWidget {
  final Profile profile;
  final Profile myprofile;
  const ProfileScreen({Key key, this.profile, this.myprofile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //System.Chorome - устанавливает цвет нижнего бара(Navigation Bar)
    // верхний бар - Status Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFFAFAFA),
    ));
    // Этот экран должен содержать как
    // Информацию о профиле, из которого происходит вызов myprofile
    // так и информацию о проссматриваемом профиле
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProfileAppBar(
        profile: profile,
      ),
      body: Body(
        profile: profile,
        mypofile: myprofile,
      ),
    );
  }
}
