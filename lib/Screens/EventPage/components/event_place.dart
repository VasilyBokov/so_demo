import 'package:flutter/material.dart';
import 'package:so_demo/style_guide.dart';

class EventPlace extends StatelessWidget {
  @override
  final String placename;
  final String adress;

  const EventPlace({Key key, this.placename, this.adress}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15),
              Text(
                placename,
                style: kMTextStyleBlack5,
              ),
              SizedBox(height: 5),
              Text(
                adress,
                style: kParagraphTextStyleGrey3,
              ),
              SizedBox(height: 15),
              Image(
                image: AssetImage('assets/event_images/map.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
