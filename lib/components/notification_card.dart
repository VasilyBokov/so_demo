import 'package:flutter/material.dart';
import 'package:so_demo/style_guide.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 1.0, bottom: 15.0),
        child: Container(
          //  include notifcation card
          // this container could be extracted
          height: 52,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                color: Colors.red,
                iconSize: 1,
                padding: const EdgeInsets.only(bottom: 8),
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/guest_images/guest2.jpg"),
                  radius: 12,
                ),
                onPressed: () {},
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Profile Name",
                          style: kMTextStyleBlack5,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "отправил Вам собщение",
                          style: kMTextStyleGrey6,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                      child: Container(
                        child: Text(
                          "Текст сообщения",
                          style: kMTextStyleGrey8,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "12:20",
                        style: kMTextStyleGrey8,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
