import 'package:demo_sign_in/saved_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_sign_in/theme.dart';
class pp extends StatefulWidget {
  const pp({Key? key}) : super(key: key);

  @override
  State<pp> createState() => _ppState();
}

class _ppState extends State<pp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(10.0, 50.0, 0.0,0.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/yash.jpg"),
              radius: 60.0,

            ),
          ),
         SizedBox(height: 30.0),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
           child: TextButton(onPressed: (){

           },
               style: TextButton.styleFrom(
                 primary: kPrimaryColor,
                 padding: EdgeInsets.all(20),
                 shape:
                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 backgroundColor: Color(0xFFF5F6F9),
               ),
               child: Row(
                 children: [
                   SvgPicture.asset("assets/User Icon.svg",color: kPrimaryColor,),
                   SizedBox(width: 30.0,),
                   Text("My Account"),
                   SizedBox(width: 150.0,),
                   Icon(Icons.arrow_forward_ios_sharp),
                 ],
               )),
         ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: TextButton(onPressed: (){

            },
                style: TextButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.all(20),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/Bell.svg",color: kPrimaryColor,),
                    SizedBox(width: 30.0,),
                    Text("Notifications"),
                    SizedBox(width: 150.0,),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(onPressed: (){

            },
                style: TextButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.all(20),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/Settings.svg",color: kPrimaryColor,),
                    SizedBox(width: 30.0,),
                    Text("Settings"),
                    SizedBox(width: 170.0,),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
            child: TextButton(onPressed: (){

            },
                style: TextButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.all(20),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/Question mark.svg",color: kPrimaryColor,),
                    SizedBox(width: 30.0,),
                    Text("Help Center"),
                    SizedBox(width: 150.0,),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(onPressed: (){

            },
                style: TextButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.all(20),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/Log out.svg",color: kPrimaryColor,),
                    SizedBox(width: 30.0,),
                    Text("Log out"),
                    SizedBox(width: 173.0,),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                )),
          ),

        ],
      )
    )
    ;
  }
}
