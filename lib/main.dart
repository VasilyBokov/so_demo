import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Welcome/welome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: WelcomeScreen(),
    );
  }
}

// Это должно помочь определиться со скалированием шрифта
// нужно вставить в нужном виджите
// WidgetsFlutterBinding.ensureInitialized();
// ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: true);

// думается мне что необходимо раздлить описание класса профиля
// и создание представителей класса профиль
// чтобы не возникала путанница
// необходимо понять как ссылаться в ивенте на профиль
// мб стоит переименовать hostNick -> host
// и сделать его представителем класса  Profile

// нужно как то разобраться с форматом времени в ивенте
// поскольку отображение послезавтра, сегодня будет сильно
// разного размера и от этого возникнут неприятности
// мб вариант dd:mm:yyyy

// задать шрифты через em и rem
