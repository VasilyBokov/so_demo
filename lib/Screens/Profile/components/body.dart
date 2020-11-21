import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Profile/components/image.dart';
import 'package:so_demo/Screens/Profile/components/name_description.dart';
import 'package:so_demo/Screens/Profile/components/sub_button.dart';
import 'package:so_demo/Screens/Profile/components/subscribers_place.dart';
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
        Padding(
          padding: EdgeInsets.only(left: 15, top: 30),
          child: Text(
            "Предстоящие",
            style: kMTextStyleBlack4,
          ),
        ),
        // Event mini cart
        EventMiniCard(
          event: events[0],
        ),
        // Event mini cart
        EventMiniCard(
          event: events[1],
        )
      ],
    );
  }
}

class EventMiniCard extends StatelessWidget {
  final Event event;

  const EventMiniCard({
    Key key,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("width is " + size.width.toString());
    print("height is " + size.height.toString());
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.04, right: size.width * 0.04),
      child: Container(
        // color: Colors.blue[200],
        // Элементы карточки в стоку и внизу разделительная полоса
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // мини карточка без фотографии
                Container(
                  // color: Colors.red[200],
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, top: 5),
                    child: CircleAvatar(
                      radius: size.width * 0.1,
                      backgroundImage: AssetImage(
                        // необходимо понять как ссылаться в ивенте на профиль
                        // а пока что в аватаре просто фото мероприятия
                        event.images[0],
                      ),
                    ),
                  ),
                ),
                // Характеристика события
                Expanded(
                  child: Container(
                    // width: size.width * 0.911 * 0.6,
                    // height: size.width * 0.233,
                    color: Colors.white,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            event.category,
                            style: kMTextStyleGrey6,
                          ),
                        ),
                        Text(
                          event.name,
                          style: kMTextStyleBlack5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                event.time,
                                style: kParagraphTextStyleGrey6,
                              ),
                              // вертикальный девайдер
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 5),
                                child: Container(
                                  width: 1,
                                  height: 11,
                                  color: Color(0xFF9196A0),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.place,
                                  color: Color(0xFF9196A0),
                                  size: 11,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                width: 90,
                                // height: 15,
                                child: Text(
                                  // если название слишеом длинное
                                  // печатаем только его часть
                                  // размером в х символов
                                  event.place.length > 11
                                      ? event.place.substring(0, 10) + "..."
                                      : event.place,
                                  style: kParagraphTextStyleGrey6,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // иконки и число гостей
                Container(
                  padding: EdgeInsets.only(top: 17, bottom: 6),
                  height: size.width * 0.225,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.bookmark_border_rounded,
                        size: 22,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0xFFC2C6CC),
                            size: 11,
                          ),
                          Text(
                            event.participantsNicks.length.toString(),
                            style: kParagraphTextStyleGrey7,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              // color: Colors.red,
              child: Divider(
                height: 12,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
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
