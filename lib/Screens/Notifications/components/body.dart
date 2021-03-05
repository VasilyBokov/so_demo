import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Container(
                //  include notifcation card
                // this container could be extracted
                height: 52,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IconButton(
                      iconSize: 15,
                      padding: const EdgeInsets.only(bottom: 8),
                      icon: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/guest_images/guest2.jpg"),
                        radius: 17,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      child: Column(
                        children: [Text("Ostavil"), Text("Soobschenie")],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
