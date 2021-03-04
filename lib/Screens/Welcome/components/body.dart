import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Feed/feed_screen.dart';
import 'package:so_demo/Screens/LogIn/login_screen.dart';
import 'package:so_demo/Screens/SignUp/signup_screen.dart';
import 'package:so_demo/Screens/Welcome/components/background.dart';
import 'package:so_demo/components/clickable_text.dart';
import 'package:so_demo/components/rounded_buttons.dart';
import 'package:so_demo/style_guide.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size, как я понимаю, размер всего экрана
    //почитать подробнее
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          //устанавливает отступы
          padding: const EdgeInsets.fromLTRB(0, 448, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: size.height * 0.05),
              // в фигме размер экрана 640*360
              RoundedButtonPink(
                text: "Зарегистрироваться",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
                buttonheight: 44,
                buttonwidth: 240,
              ),
              SizedBox(height: 16),
              RoundedButtonBlack(
                text: "Войти",
                buttonheight: 44,
                buttonwidth: 240,
                press: () {
                  //Просто переходит на другой экран
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LogInScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 45),
              ClickableText(
                text: "Пропустить",
                textStyle: kMTextStyleWhite5,
                press: () {
                  //Просто переходит на другой экран
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FeedScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
