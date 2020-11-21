import 'package:flutter/material.dart';
import 'package:so_demo/Screens/Feed/feed_screen.dart';
import 'package:so_demo/Screens/LogIn/components/background.dart';
import 'package:so_demo/Screens/SignUp/signup_screen.dart';
import 'package:so_demo/components/clickable_text.dart';
import 'package:so_demo/components/rounded_buttons.dart';
import 'package:so_demo/components/rounded_input_fields.dart';
import 'package:so_demo/profile.dart';
import 'package:so_demo/style_guide.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // отдельно определим два виджета
    // поле логина и поле пароля
    RoundedInputField login = RoundedInputField(
      hintText: 'логин/e-mail',
      fieldheight: 42,
      fieldwidth: 255,
    );
    RoundedInputField pass = RoundedInputField(
      hintText: 'пароль',
      fieldheight: 42,
      fieldwidth: 255,
    );

    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Рады тебя видеть!",
                style: kMTextStyleBlack1,
              ),
            ),
            SizedBox(height: 32),
            // тут мы обращаемся не к классу, а к его образцу класса
            login,
            SizedBox(height: 16),
            // тут мы обращаемся не к классу, а к его образцу класса
            pass,
            SizedBox(height: 24),
            RoundedButtonPink(
              text: "Войти",
              press: () {
                // по нажатию на кнопку войти выполняется проверка на совпадение
                // необходимо как то добавлять статус входа!!!
                if (login.inputed_text == myprofile.nickname &&
                    pass.inputed_text == myprofile.password) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FeedScreen(myprofile: myprofile)));
                  print("Go in");
                } else {
                  print("What a pity!");
                }
              },
              buttonheight: 44,
              buttonwidth: 216,
            ),
            SizedBox(height: 40),
            Text(
              "Нет аккаунта?",
              style: kMTextStyleGrey6,
            ),
            SizedBox(height: 8),
            ClickableText(
              text: "Зарегистрироваться",
              textStyle: kParagraphTextStyleBlue3,
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
            ),
            SizedBox(height: 42),
            ClickableText(
              text: "Забыли пароль?",
              textStyle: kMTextStyleGrey8,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //return ForgetPasswordScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
