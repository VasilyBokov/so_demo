import 'package:flutter/material.dart';

import '../profile.dart';
import '../style_guide.dart';

class ProfileAppBar extends PreferredSize {
  final Profile profile;
  final double height;

  ProfileAppBar({@required this.profile, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Согласно аркаше, высота статус бара равена 0.1 высоты всего экрана
      height: size.height * 0.1,
      // color: Colors.blue[100],
      child: Column(
        children: [
          // верхний отступ для отступа от статус бара
          // Будет заполнять строку состояния
          Container(
            color: Colors.white,
            child: SizedBox(
              height: size.height * 0.035,
              width: size.width,
            ),
          ),
          // аппбар с 2 кнопками и ником
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // кнопка возврата
                Container(
                  // color: Colors.green[100],
                  child: IconButton(
                    color: Colors.black,
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Color.fromRGBO(102, 107, 120, 1),
                      size: size.width * 0.042,
                    ),
                    // переходим на предыдущий экран по нажатию кнопки
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                // текст
                Expanded(
                  child: Container(
                    // никнейм пользователя отображается по центру
                    // к названию в начале прибавляем символ at
                    // color: Colors.red[100],
                    alignment: Alignment.center,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.width * 0.0156,
                            bottom: size.width * 0.0203),
                        child: Text(
                          '@' + profile.nickname,
                          style: kMTextStyleBlack5,
                        ),
                      ),
                    ),
                  ),
                ),
                // кнопка вызова дополнительных функций
                Container(
                  child: IconButton(
                    color: Color.fromRGBO(102, 107, 120, 1),
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black54,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
