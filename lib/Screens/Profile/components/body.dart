import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Profile/components/image.dart';
import 'package:so_demo/Screens/Profile/components/name_description.dart';
import 'package:so_demo/Screens/Profile/components/sub_button.dart';
import 'package:so_demo/Screens/Profile/components/subscribers_place.dart';
import 'package:so_demo/components/event_card.dart';
import 'package:so_demo/profile.dart';

import '../../../event.dart';
import '../../../style_guide.dart';

class Body extends StatelessWidget {
  final Profile profile;
  final Profile mypofile;
  const Body({Key key, this.profile, this.mypofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // для корректного отображения фото выбранного профиля
        // передаем размер экрана и данные профиля
        ProfileImage(size: size, profile: profile),
        // для корректного отображения имени выбранного профиля
        // передаем размер и данные профиля
        NameAndDescription(size: size, profile: profile),
        // для корректного отображения числа подписчиков
        // и места жительства выбранного профиля
        // передаем размер и данные профиля
        SubscribersAndPlace(size: size, profile: profile),
        // для корректного отображения состояния
        // подписки на выбранный профиль
        // передаем размер, данные моего_профиля и данные профиля
        WidgetWithButton(size: size, myprofile: myprofile, profile: profile),
        // просто надпись "Предстоящие"
        Padding(
          padding: EdgeInsets.only(left: 15, top: 30),
          child: Text(
            "Предстоящие",
            style: kMTextStyleBlack4,
          ),
        ),
        // Event  card
        // пока что это не выделяется в отдельный ListView так как его включение
        // в Column создает ошибку разметки (Семен: решу в будующем)
        EventMiniCard(
          myprofile: myprofile,
          event: events[0],
        ),
        // Event card
        EventMiniCard(
          myprofile: myprofile,
          event: events[1],
        )
      ],
    );
  }
}

class WidgetWithButton extends StatelessWidget {
  const WidgetWithButton({
    Key key,
    @required this.myprofile,
    @required this.profile,
    this.size,
  }) : super(key: key);

  final Profile myprofile;
  final Profile profile;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SubscribeButton(
          myprofile: myprofile,
          profile: profile,
          size: size,
        ),
      ],
    );
  }
}
