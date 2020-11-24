import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Montserrat
final kMTextStyleWhite1 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 24,
        ScreenUtil().setSp(24, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.white);

final kMTextStyleBlack1 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 24,
        ScreenUtil().setSp(24, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.black);

final kMTextStyleWhite2 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 20,
        ScreenUtil().setSp(20, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.white);

final kMTextStyleBlack2 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 20,
        ScreenUtil().setSp(20, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.black);

final kMTextStyleBlack4 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 17,
        ScreenUtil().setSp(17, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.black);

final kMTextStyleWhite5 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 14,
        ScreenUtil().setSp(14, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.white);

final kMTextStyleBlack5 = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.black);

final kMTextStylePink5 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 14,
        ScreenUtil().setSp(14, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xFFFF005C));

final kMTextStyleGrey5 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 14,
        ScreenUtil().setSp(14, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xFF9196A0));

final kMTextStyleGrey6 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        //  12,
        ScreenUtil().setSp(12, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Color(0XFFC2C6CC));

final kMTextStyleBlack6 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 11,
        ScreenUtil().setSp(11, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.black);

final kMTextStylePink6 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 11,
        ScreenUtil().setSp(11, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xFFFF005C));

final kMTextStyleWhite6 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 11,
        ScreenUtil().setSp(11, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.white);

final kMTextStyleGrey8 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 8,
        ScreenUtil().setSp(8, allowFontScalingSelf: true),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xFF9196A0));

//Всякая хуйня
final kParagraphTextStyleBlue3 = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 12,
    //fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: Color(0xFF556BF5));

final kParagraphTextStyleGrey3 = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 12,
    //fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: Color(0xFF9196A0));

final kParagraphTextStyleGrey2 = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 13,
    fontFamily: 'SF-Pro-Text',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 2,
    color: Color(0xFF666B78));
// хуйня sf-pro
final kParagraphTextStyleGrey6 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 11,
        ScreenUtil().setSp(11, allowFontScalingSelf: true),
    fontFamily: 'SF-Pro-Text',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
    color: Color(0xFF9196A0));
final kParagraphTextStyleGrey7 = TextStyle(
    decoration: TextDecoration.none,
    fontSize:
        // 9,
        ScreenUtil().setSp(9, allowFontScalingSelf: true),
    fontFamily: 'SF-Pro-Text',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1,
    color: Color(0xFF9196A0));

// Для корректного скалирования щрифта необходимо добавить 3 строчки ниже
// в начале Widget build каждого файла
// WidgetsFlutterBinding.ensureInitialized();
// ScreenUtil.init(context,
//     designSize: Size(360, 720), allowFontScaling: true);
// хотя в первой из 3 строчек я не уверен
