import 'package:flutter/material.dart';

import '../../../profile.dart';

class ProfileImage extends StatelessWidget {
  // класс служит для отображения круглого аватара профиля
  // изображение аватара находится в папке assets
  final Profile profile;
  final Size size;

  const ProfileImage({Key key, @required this.size, this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(),
        ),
        Container(
          // пока что отступы условны
          // картинка занимает отностительный размер
          //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //
          // width: size.width * 0.28,
          child: CircleAvatar(
            backgroundImage: AssetImage(profile.image),
            radius: size.width * 0.20,
            // backgroundImage:  Image.asset(profile.image),
          ),
        ),
        Expanded(
          child: SizedBox(),
        )
      ],
    );
  }
}
