import 'package:flutter/material.dart';
import 'package:so_demo/Screens/EventPage/event_page.dart';
import 'package:so_demo/Screens/Profile/profile_screen.dart';
import 'package:so_demo/event.dart';
import 'package:so_demo/profile.dart';

class Body extends StatelessWidget {
  // профиль под которым выполнен вход в приложение
  final Profile myprofile;
  Body({Key key, this.myprofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: IconButton(
              iconSize: 30,
              padding: EdgeInsets.all(10.0),
              icon: Icon(Icons.picture_in_picture_alt),
              // при нажатии выводится текст в консоль
              // и вызывается новый экран Профиля
              onPressed: () {
                print("Go to event");
                print(events.length);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // открываем экран профия
                        builder: (context) => EventPage(
                              event: events[0],
                              myprofile: myprofile,
                            )));
              }),
        ),
        Center(
          child: IconButton(
              iconSize: 30,
              padding: EdgeInsets.all(10.0),
              icon: Icon(Icons.person_add),
              // при нажатии выводится текст в консоль
              // и вызывается новый экран Профиля
              onPressed: () {
                print("Go profile");
                print(profiles.length);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileScreen(
                              profile: profiles[0],
                              myprofile: myprofile,
                            )));
              }),
        ),
      ],
    );
  }
}
