import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  @required
  final Widget child;

  const Background({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
            child: Container(
              //  не могу нормально расположить svg
              // need any help from Bazil
              padding: EdgeInsets.only(top: 80),
              width: size.width,
              height: size.height,
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
                width: 1.5 * size.width,
                height: 1.5 * size.height,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Container(
                width: size.width,
                // width: 200,
                // height: 200,
                child: SvgPicture.asset("assets/images/logo_so.svg")
                // child: SvgPicture.asset("assets/images/Vector.svg")
                ),
          ),
          child
        ],
      ),
    );
  }
}
