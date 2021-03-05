import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:so_demo/components/notification_card.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class Body extends StatelessWidget {
  final Profile userprofile;
  // профиль под которым выполнен вход

  const Body({Key key, this.userprofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Для установки нужного размера
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(context,
        designSize: Size(360, 720), allowFontScaling: true);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
        ],
      ),
    );
  }
}
