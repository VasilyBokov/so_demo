import 'package:flutter/material.dart';

import '../event.dart';
import '../profile.dart';
import '../style_guide.dart';

class EventMiniCard extends StatelessWidget {
  // для правильного отображения карточки сбытия мы должны знать
  // как характеристику самого события (содержится в класс event)
  // так и характеристику моего профиля myprofile (смотреть состояние закладок)
  final Event event;
  final Profile myprofile;

  const EventMiniCard({
    Key key,
    this.event,
    this.myprofile,
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
                  padding: EdgeInsets.only(top: 25, bottom: 6),
                  height: size.width * 0.225,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 25,
                          height: 25,
                          child:
                              TapBookmark(myprofile: myprofile, event: event)),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color(0xFFC2C6CC),
                            size: 12,
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
                color: Color(0xFFC2C6CC),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TapBookmark extends StatefulWidget {
  // необходм профиль, поскольку в нем будет массив нужных понравившихся мероприятий
  // (НАХУЯ?)
  final Profile myprofile;
  final Event event;
  TapBookmark({Key key, this.myprofile, this.event}) : super(key: key);

  @override
  _TapBookmarkState createState() => _TapBookmarkState();
}

class _TapBookmarkState extends State<TapBookmark> {
  // передаваемая функция добавления эвента в заметки
  void _handleWidgetState() {
    setState(() {
      if (widget.myprofile.marked.contains(widget.event)) {
        widget.myprofile.marked.remove(widget.event);
      } else {
        widget.myprofile.marked.add(widget.event);
        // for (Event nam in widget.myprofile.marked) {
        //   print("1");
        //   print(nam.name);
        // }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BookMarkWidget(
        onChanged: _handleWidgetState,
        event: widget.event,
        myprofile: widget.myprofile,
      ),
    );
  }
}

class BookMarkWidget extends StatelessWidget {
  final Function onChanged;
  final Profile myprofile;
  final Event event;
  const BookMarkWidget({Key key, this.onChanged, this.myprofile, this.event})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (myprofile.marked.contains(event)) {
      return GestureDetector(
        onTap: onChanged,
        child: Icon(
          Icons.bookmark_rounded,
          size: 28,
        ),
      );
    } else {
      return Container(
        child: GestureDetector(
          onTap: onChanged,
          child: Icon(
            Icons.bookmark_border_rounded,
            size: 28,
          ),
        ),
      );
    }
  }
}
