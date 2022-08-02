import 'package:flutter/material.dart';
// import 'package:proapp/page_alignment.dart';
// import 'package:proapp/pages/splash/components/splash_content.dart';
import 'package:demo_sign_in/saved_info.dart';
import 'package:demo_sign_in/splash_content.dart';
import 'package:demo_sign_in/main.dart';
import 'package:demo_sign_in/default_button.dart';
import 'package:demo_sign_in/size_ss.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int cInd= 0;

  List<Map<String,dynamic>> splashData=[
    {
      "text": "Store me aapka Swagat hai",
      "image": "assets/splash_1.png"
    },
    {
      "text": "Humare yaha bharat ke vibhin \ndukaano se katto ka prabandh hai",
      "image": "assets/splash_2.png"
    },
    {
      "text": "YogiJi humare sponsor hai \nToh Ghar bethiye or Shopping Kariye",
      "image": "assets/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState((){
                    cInd= value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index)=> SplashContent(
                  image: splashData[index]["image"]!,
                  text:  splashData[index]["text"]!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length,
                                (index) => buildPoint(index:index))
                    ),
                    Spacer(flex:3),
                    defaultButton(
                      text: "Continue",
                      press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signin()) );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildPoint({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: cInd== index? 20:6,
      decoration: BoxDecoration(
        color: cInd==index ? kPrimaryColor: Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



