import 'package:flutter/material.dart';
import 'package:so_demo/Screens/EventPage/components/event_date.dart';
import 'package:so_demo/Screens/EventPage/components/event_place.dart';
import 'package:so_demo/components/carousel_gallery.dart';
import 'package:so_demo/event.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class BodyWithFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Семен: зачем нужны двоеточия?
    event:
    events[0];
    myprofile:
    profiles[0];
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                ImageSliderCard(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 36, 0, 0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          iconSize: 30,
                          color: Color(0xFFFAFAFA),
                          icon: Icon(Icons.keyboard_arrow_left),
                          onPressed: () {
                            //TODO: backstep
                          }),
                      Spacer(),
                      IconButton(
                        iconSize: 30,
                        color: Color(0xFFFAFAFA),
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
                          //TODO: settings
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //AssetImage("assets/guest_images/guest1.jpg"),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image(
                  image: AssetImage('assets/event_images/Rectangle418.png')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("assets/guest_images/guest1.jpg"),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "@vasiazadov",
                        style: kMTextStyleBlack6,
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "КАТЕГОРИЯ",
                    style: kMTextStyleGrey8,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Танцы в консерватории"
                    " имени Ленина",
                    style: kMTextStyleBlack2,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Каждый из нас понимает очевидную вещь: "
                    "постоянное информационно-пропагандистское"
                    " обеспечение нашей деятельности создаёт"
                    " предпосылки для соответствующих условий"
                    " активизации.",
                    style: kParagraphTextStyleGrey2,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Stack(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 20,
                          ),
                          Positioned(
                            right: 80,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/guest_images/guest1.jpg"),
                            ),
                          ),
                          Positioned(
                            right: 65,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/guest_images/guest2.jpg"),
                            ),
                          ),
                          Positioned(
                            right: 50,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/guest_images/guest3.jpg"),
                            ),
                          ),
                          Positioned(
                            right: 35,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/guest_images/guest5.jpg"),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/guest_images/guest6.jpg"),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "23/32",
                        style: kMTextStyleGrey6,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Color(0xFFC2C6CC),
                    height: 1,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            EventPlace(
              placename: "Название места",
              adress: "Полный адрес места",
            ),
            SizedBox(
              height: 25,
            ),
            EventDate(
              date: "пн, 28 октября, 18:00",
              adress: "Полный адрес места",
            ),
          ],
        ),
      ),
    );
  }
}
