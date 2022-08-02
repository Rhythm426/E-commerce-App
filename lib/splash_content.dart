import 'package:flutter/material.dart';
import 'package:demo_sign_in/size_ss.dart';
import 'package:demo_sign_in/saved_info.dart';
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.image, required this.text ,
  }) : super(key: key);
  final String text,image;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: <Widget>[
        Spacer(),
        Text("MauryaJi ka Store",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),),
      ],
    );
  }
}