import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/body.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(context,
        designSize: Size(360, 720), allowFontScaling: true);
    //System.Chorome - устанавливает цвет нижнего бара(Navigation Bar)
    // верхний бар - Status Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
    ));
    return Scaffold(
      // мб переписать для грамотного отображения svg
      body: Body(),
    );
  }
}
