import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:so_demo/Screens/Notifications/components/body.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Для установки нужного размера
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(context,
        designSize: Size(360, 720), allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0.0,
        titleSpacing: 0.0,
        toolbarHeight: 50.0,
        centerTitle: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white12,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: new Text(
            // появился новый стиль шрифта
            "Уведомления",
            style: kMTextStyleBlack5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              iconSize: 23.0,
              color: Colors.black87,
              icon: Icon(Icons.clear),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      body: Body(userprofile: myprofile),
    );
  }
}
// Нужно понять какие данные буут передаваться в профиль
// чтобы отображать именно уведомления нужного пользователя
