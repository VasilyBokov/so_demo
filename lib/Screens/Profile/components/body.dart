import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Profile/components/image.dart';
import 'package:so_demo/Screens/Profile/components/name_description.dart';
import 'package:so_demo/Screens/Profile/components/sub_button.dart';
import 'package:so_demo/Screens/Profile/components/subscribers_place.dart';
import 'package:so_demo/profile.dart';

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
        Padding(
          padding: EdgeInsets.only(left: 15, top: 30),
          child: Text(
            "Предстоящие",
            style: kMTextStyleBlack4,
          ),
        ),
        // Event mini cart
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          color: Colors.green,
          // Элементы карточки в стоку
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage(profiles[1].image),
                ),
              ),
              Column(
                children: [Text("123"), Text("data")],
              )
            ],
          ),
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
      children: [
        // заполняем пространство слева
        Expanded(
          child: SizedBox(),
        ),
        SubscribeButton(
          myprofile: myprofile,
          profile: profile,
          size: size,
        ),
        //заполняем пространство справа
        Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
