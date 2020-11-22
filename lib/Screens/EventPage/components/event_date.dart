import 'package:flutter/material.dart';
import 'package:so_demo/Screens/EventPage/components/join_button.dart';
import 'package:so_demo/event.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class EventDate extends StatelessWidget {
  @override
  final String date;
  final String adress;

  const EventDate({Key key, this.date, this.adress}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 64,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 1,
        child: Row(
          // Сеиен: я добавил  mainAxisAligement, чтобы эдементы располагались
          // как можго дальше друг от друга
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    date,
                    style: kMTextStyleWhite5,
                  ),
                  SizedBox(height: 5),
                  Text(
                    adress,
                    style: kMTextStyleGrey6,
                  ),
                  //SizedBox(height: 15),
                ],
              ),
            ),
            // Сема: добавил для отступа справа
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: JoinButton(
                simpleevent: events[0],
                myprofile: profiles[0],
                buttonheight1: 44,
                buttonwidth1: 98,
                buttonheight2: 44,
                buttonwidth2: 85,
              ),
            )
          ],
        ),
      ),
    );
  }
}
