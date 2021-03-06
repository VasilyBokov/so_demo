import 'package:flutter/material.dart';

import '../../../profile.dart';
import '../../../style_guide.dart';

class NameAndDescription extends StatelessWidget {
  const NameAndDescription({
    Key key,
    @required this.profile,
    this.size,
  }) : super(key: key);

  final Profile profile;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // необходим отступ от фотографии в 10 пикселей
      padding: EdgeInsets.only(top: 10.0, bottom: 18.0),
      // столбец из 2 элементов
      // 1 - иия пользователя, 2 - его описание
      child: Column(
        children: [
          // имя пользователя слева и справа от себя содержит два
          // виджета, заполянющих все свободное пространство
          Row(
            children: [
              // Заполнение пространства слева
              Expanded(
                child: SizedBox(),
              ),
              //
              Column(
                children: [
                  // имя профидя
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: size.height * 0.0313,
                      color: Colors.white,
                      child: Center(
                        child: Text(profile.name, style: kMTextStyleBlack2),
                      ),
                    ),
                  ),
                  // описание профиля
                  Container(
                    width: size.width * 0.4,
                    color: Colors.white,
                    child: Text(profile.description,
                        textAlign: TextAlign.center, style: kMTextStyleGrey8),
                  )
                ],
              ),
              // Заполнение пространства справа
              Expanded(
                child: SizedBox(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
