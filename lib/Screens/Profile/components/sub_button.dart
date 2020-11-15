import 'package:flutter/material.dart';

import '../../../profile.dart';
import '../../../style_guide.dart';

class SubscribeButton extends StatefulWidget {
  final Profile myprofile;
  final Profile profile;
  final Size size;

  const SubscribeButton({Key key, this.myprofile, this.profile, this.size})
      : super(key: key);
  @override
  _SubscribeButtonState createState() => _SubscribeButtonState();
}

// состояние  родительский класса
class _SubscribeButtonState extends State<SubscribeButton> {
  // передаваемая в кнопку функция
  void _handleWidgetState() {
    setState(() {
      // проверяем есть ли данный в профиль в подписках нашего профиля
      if (widget.myprofile.subscriptions.contains(widget.profile.nickname)) {
        // если есть - удаляем его первое вхождение
        widget.myprofile.subscriptions.remove(widget.profile.nickname);
      } else {
        // иначе - добавляем его в подписки
        widget.myprofile.subscriptions.add(widget.profile.nickname);
      }
    });
  } // как записать данные в новый профиль?

  @override
  Widget build(BuildContext context) {
    return Container(
      // TapBox Будет изменять список подписок myprofile
      // однако сам TepBox это виджет без состояния
      child: TapBox(
          onChanged: _handleWidgetState,
          profile: widget.profile,
          myprofile: widget.myprofile,
          size: widget.size),
    );
  }
}

// Класс кнопки для отображения подписки
class TapBox extends StatelessWidget {
  final Function onChanged;
  final Profile myprofile;
  final Profile profile;
  final Size size;

  const TapBox(
      {Key key, this.onChanged, this.myprofile, this.profile, this.size})
      : super(key: key);

  void _handleTap() {
    onChanged();
    // выводим в консоль?
    print(myprofile.subscriptions);
  }

  Widget build(BuildContext context) {
    // в случае если подписка оформлена
    if (myprofile.subscriptions.contains(profile.nickname)) {
      return Container(
        height: size.width * 0.089,
        width: size.width * 0.39,
        // окантовка для кнопки
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromRGBO(244, 29, 96, 1))),
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: _handleTap,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.done_sharp,
                size: 17,
                color: Color.fromRGBO(244, 29, 96, 1),
              ),
              Text("Вы подписаны", style: kMTextStylePink6),
            ],
          ),
        ),
      );
      // если подписка не оформлена
    } else {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        height: size.width * 0.089,
        width: size.width * 0.39,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: _handleTap,
          color: Color.fromRGBO(244, 29, 96, 1),
          child: Text("Подписаться", style: kMTextStyleWhite6),
        ),
      );
    }
  }
}
