import 'package:flutter/material.dart';
import 'package:so_demo/event.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class JoinButton extends StatefulWidget {
  final Event simpleevent;
  final Profile myprofile;
  final double buttonwidth1, buttonheight1, buttonwidth2, buttonheight2;

  const JoinButton(
      {Key key,
      this.simpleevent,
      this.myprofile,
      this.buttonwidth1,
      this.buttonheight1,
      this.buttonheight2,
      this.buttonwidth2})
      : super(key: key);
  @override
  _JoinButtonState createState() => _JoinButtonState();
}

// состояние  родительский класса
class _JoinButtonState extends State<JoinButton> {
  // функция изменения какого то параметра
  void _handleWidgetState() {
    setState(() {
      // проверяем есть ли данное событие в "пойду" нашего профиля
      if (widget.simpleevent.participantsNicks
          .contains(widget.myprofile.nickname)) {
        // если есть - удаляем его первое вхождение
        widget.simpleevent.participantsNicks.remove(widget.myprofile.nickname);
      } else {
        // если нет - добавляем его в "пойду"
        widget.simpleevent.participantsNicks.add(widget.myprofile.nickname);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // TapBox Будет изменять параметр
      child: TapBox(
        onChanged: _handleWidgetState,
        event: widget.simpleevent,
        myprofile: widget.myprofile,
      ),
    );
  }
}

// Класс кнопки для отображения подписки
class TapBox extends StatelessWidget {
  //final bool active;
  final Function onChanged;
  final Profile myprofile;
  final Event event;
  final double buttonwidth1, buttonheight1, buttonwidth2, buttonheight2;

  const TapBox({
    Key key,
    //this.active,
    this.onChanged,
    this.myprofile,
    this.event,
    this.buttonwidth1,
    this.buttonheight1,
    this.buttonheight2,
    this.buttonwidth2,
  }) : super(key: key);

  void _handleTap() {
    onChanged();
    // выводим в консоль
    print(myprofile.subscriptions);
  }

  Widget build(BuildContext context) {
    // в случае если подписка оформлена
    if (event.participantsNicks.contains(myprofile.nickname)) {
      return Container(
        height: buttonheight2,
        width: buttonwidth2,
        // окантовка для кнопки
        child: ClipRRect(
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Color(0xFFFF005C)),
            ),
            onPressed: _handleTap,
            color: Colors.black,
            child: Text(
              "Уже иду",
              style: kMTextStylePink5,
            ),
          ),
        ),
      );
      // если пользователь не тыкнул "пойду"
    } else {
      return Container(
        height: buttonheight1,
        width: buttonwidth1,
        child: ClipRRect(
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Color(0xFFFF005C)),
            ),
            onPressed: _handleTap,
            color: Color(0xFFFF005C),
            child: Text(
              "Пойду",
              style: kMTextStyleWhite5,
            ),
          ),
        ),
      );
    }
  }
}
