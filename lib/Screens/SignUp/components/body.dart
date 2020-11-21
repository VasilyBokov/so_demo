import 'package:flutter/material.dart';
import 'package:so_demo/Screens/LogIn/login_screen.dart';
import 'package:so_demo/Screens/SignUp/components/background.dart';
import 'package:so_demo/components/clickable_text.dart';
import 'package:so_demo/components/rounded_buttons.dart';
import 'package:so_demo/components/rounded_input_fields.dart';
import 'package:so_demo/style_guide.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //SizedBox(height: size.height * 0.28),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Привет!",
                style: kMTextStyleBlack1,
              ),
            ),
            SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.fromLTRB(52, 0, 53, 0),
              child: Text(
                "Тут ты сможешь найти очень крутые"
                " мероприятия и организовать свои",
                style: kMTextStyleGrey5,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 28),
            RoundedInputField(
              hintText: 'e-mail',
              fieldheight: 42,
              fieldwidth: 255,
            ),
            SizedBox(height: 16),
            RoundedInputField(
              hintText: 'пароль',
              fieldheight: 42,
              fieldwidth: 255,
            ),
            SizedBox(height: 24),
            RoundedButtonPink(
              text: "Зарегистрироваться",
              press: () {},
              buttonheight: 44,
              buttonwidth: 240,
            ),
            SizedBox(height: 48),
            Text(
              "Уже есть аккаунт?",
              style: kParagraphTextStyleGrey3,
            ),
            SizedBox(height: 8),
            ClickableText(
              text: "Войти",
              textStyle: kParagraphTextStyleBlue3,
              press: () {
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
          ],
        ),
      ),
    );
  }
}
