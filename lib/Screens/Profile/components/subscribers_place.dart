import 'package:flutter/material.dart';
import 'package:so_demo/style_guide.dart';

import '../../../profile.dart';

class SubscribersAndPlace extends StatelessWidget {
  const SubscribersAndPlace({
    Key key,
    @required this.profile,
    this.size,
  }) : super(key: key);

  final Profile profile;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.05),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // заполняем пространство слева
          Expanded(
            child: SizedBox(),
          ),
          // Число подписчиков
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.0),
                child: Container(
                    height: size.width * 0.056,
                    alignment: Alignment.center,
                    width: size.width * 0.18,
                    child: Text(profile.subscribers.length.toString(),
                        style: kMTextStyleBlack2)),
              ),
              Text("Подписчиков", style: kMTextStyleGrey8)
            ],
          ),
          SizedBox(
            width: 12.0,
          ),
          // Черточка в центре с градиентом
          SizedBox(
            width: 1.0,
            height: 40,
            child: Container(
              width: 1.0,
              height: 40.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Color.fromRGBO(194, 198, 204, 1),
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          // Место
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.0),
                child: Container(
                    height: size.width * 0.056,
                    width: size.width * 0.18,
                    //color: Colors.green,
                    //padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.place,
                    )),
              ),
              Text(
                profile.place,
                style: kMTextStyleGrey8,
              )
            ],
          ),
          // заполняем пространство справа
          Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
