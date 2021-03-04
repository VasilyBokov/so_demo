import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:so_demo/Screens/EventPage/event_page_f.dart';
import 'package:so_demo/Screens/Profile/profile_screen.dart';
import 'package:so_demo/components/event_card.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/event.dart';

class Body extends StatelessWidget {
  // профиль под которым выполнен вход в приложение
  final Profile myprofile;
  const Body({Key key, this.myprofile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // для корректного отображения размера на совместимых устройствах
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(context,
        designSize: Size(360, 720), allowFontScaling: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5, top: 25),
          child: Container(
            // color: Colors.red[50],
            // height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 25,
                  icon: SvgPicture.asset("assets/icons/notification.svg"),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 25,
                  icon: SvgPicture.asset("assets/icons/profile.svg"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.picture_in_picture_alt),
                  // при нажатии выводится текст в консоль
                  // и вызывается новый экран Профиля
                  onPressed: () {
                    print("Go to event");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          // открываем экран профия
                          builder: (context) => EventMiniCard(
                              // для тестового примера
                              ),
                        ));
                  }),
            ),
            Center(
              child: IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.person_add),
                  // при нажатии выводится текст в консоль
                  // и вызывается новый экран Профиля
                  onPressed: () {
                    print("Go profile");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                                  profile: profiles[0],
                                  myprofile: myprofile,
                                )));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       // открываем экран профия
                    //       builder: (context) => ProfileScreen(
                    //         // для тестового примера запускаем первый из профилей
                    //         profile: profiles[0],
                    //         myprofile: myprofile,
                    //       ),
                    //     ));
                  }),
            ),
          ],
        ),
        Expanded(
          child: SizedBox(),
        ),
        // Контейнер, содержащий все кнопки навигации
        // выделяется в отдельный виджет
        Container(
          // color: Colors.green[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // иконка ленты, главное окно
              IconButton(
                iconSize: 25,
                icon: SvgPicture.asset("assets/icons/Home.svg"),
                onPressed: () {},
              ),
              // Иконка запланированных событий
              IconButton(
                iconSize: 25,
                icon: SvgPicture.asset("assets/icons/Calendar.svg"),
                onPressed: () {},
              ),
              // Иконка добавления события
              IconButton(
                iconSize: 35,
                icon: SvgPicture.asset("assets/icons/Add.svg"),
                onPressed: () {},
              ),
              // Иконка поиска события (как организовать поиск?)
              IconButton(
                iconSize: 25,
                icon: SvgPicture.asset("assets/icons/Message.svg"),
                onPressed: () {},
              ),
              // Иконка моего профиля
              IconButton(
                iconSize: 25,
                icon: SvgPicture.asset("assets/icons/profile.svg"),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
