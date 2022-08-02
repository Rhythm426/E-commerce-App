import 'package:flutter/material.dart';

//import '../page_alignment.dart';
import '../saved_info.dart';
import 'package:demo_sign_in/size_ss.dart';

class defaultButton extends StatelessWidget {
  const defaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        onPressed: press,
        child: Text(text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
