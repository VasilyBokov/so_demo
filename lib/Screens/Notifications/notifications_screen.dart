import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:so_demo/Screens/Notifications/components/body.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Для установки нужного размера
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(context,
        designSize: Size(360, 720), allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Body(),
    );
  }
}
// Нужно понять какие данные буут передаваться в профиль
// чтобы отображать именно уведомления нужного пользователя
