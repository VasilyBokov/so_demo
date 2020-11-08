import 'package:flutter/material.dart';
import 'package:so_demo/Screens/EventPage/event_page_f.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: IconButton(
              iconSize: 30,
              padding: EdgeInsets.all(10.0),
              icon: Icon(Icons.person),
              // при нажатии выводится текст в консоль
              // и вызывается новый экран Профиля
              onPressed: () {
                print("Go to profile");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      // открываем экран профия
                      builder: (context) => EventPageWithFoto(
                          // для тестового примера запускаем первый из профилей
                          ),
                    ));
              }),
        ),
        Center(
          child: IconButton(
              iconSize: 30,
              padding: EdgeInsets.all(10.0),
              icon: Icon(Icons.picture_in_picture),
              // при нажатии выводится текст в консоль
              // и вызывается новый экран Профиля
              onPressed: () {
                print("Go event");
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       // открываем экран профия
                //       builder: (context) => ProfileScreen(
                //         // для тестового примера запускаем первый из профилей
                //         profile: profiles[0],
                //         myprofile: myprofile,
                //       ),
                //     ));
              }),
        ),
      ],
    );
  }
}
