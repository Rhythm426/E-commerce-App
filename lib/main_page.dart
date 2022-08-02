import 'package:demo_sign_in/cart.dart';
import 'package:demo_sign_in/forgetpassword.dart';
import 'package:demo_sign_in/main.dart';
import 'package:demo_sign_in/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:demo_sign_in/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_sign_in/size_ss.dart';
import 'package:demo_sign_in/profile_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page/screen_size.dart';
// import 'screen_size.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:25 , vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6,
                    height: 45,
                    // color: Colors.black26,
                    // ch
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      onChanged: (value){

                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Search Product',
                        prefixIcon: Icon(Icons.search,),//color: Colors.grey,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.11,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      // borderRadius: Box,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>app_cart())),
                      icon:Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.grey[600],
                      ),
                    ),
                    // color: Colors.black26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    // overfl
                    children: [

                      Container(
                        width: SizeConfig.screenWidth * 0.11,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          // borderRadius: Box,
                          shape: BoxShape.circle,

                        ),
                        child: IconButton(
                          onPressed:(){},
                          icon:Icon(
                            Icons.notifications,
                            color: Colors.grey[600],
                            // size: 30,
                            // padd
                          ),
                        ),
                        // color: Colors.black26,
                      ),
                      // SizedBox(height: 100,),
                      Positioned(
                        right: 4,
                        top: 8,
                        child: Container(
                          width: getProportionateScreenWidth(16),
                          height: getProportionateScreenHeight(16),
                          // size
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(width: 0,color: Colors.white,),
                            // siz
                          ),
                          child: Center(
                            child: Text('2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                          ),
                        ),
                        // chi
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF4A3298),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // padd
                children: [
                  Text(
                    'A Monsoon Surprise',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Cashback 30%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),


            // -------------------***********Categories***********-----------------


            Container(
              height: getProportionateScreenWidth(90),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],

                        ),
                        child: IconButton(onPressed: (){},icon:Icon(Icons.flash_on_outlined,color: Colors.orange,)),

                      ),
                      SizedBox(height: 7,),
                      Text('Flash \nDeals',style: TextStyle(fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(width: 15,),

                  Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],

                        ),
                        child: IconButton(onPressed: (){},icon:Icon(Icons.receipt,color: Colors.orange,)),

                      ),
                      SizedBox(height: 5,),
                      Text('Bill',style: TextStyle(fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],

                        ),
                        child: IconButton(onPressed: (){},icon:Icon(Icons.videogame_asset,color: Colors.orange,)),

                      ),
                      SizedBox(height: 5,),
                      Text('Games',style: TextStyle(fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(width: 15,),

                  Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],

                        ),
                        child:  IconButton(onPressed: (){},icon: Icon(Icons.card_giftcard,color: Colors.orange,)),

                      ),
                      SizedBox(height: 5,),
                      Text('Gifts',style: TextStyle(fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(width: 15,),

                  Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],

                        ),
                        child: IconButton(onPressed: (){},icon:Icon(Icons.more_vert_rounded,color: Colors.orange,)),

                      ),
                      SizedBox(height: 5,),
                      Text('More',style: TextStyle(fontWeight: FontWeight.w300),textAlign: TextAlign.center,)
                    ],
                  ),

                ],
              ),
            ),

            // ----------------------Special For You------------------
            // SizedBox(height: 10,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // padd

              children: [
                SizedBox(width:30),
                Text(
                  'Special For You',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 180,),
                InkWell(
                  onTap: (){},
                  // borderRadius: BorderRadius.circular(10),
                  // autofocus: true,
                  // customBorder: ShapeBorder.,
                  child: Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.black38,
                      // fontStyle: FontStyle.
                      // fontFamily: Fon
                    ),
                  ),
                )
              ],
            ),
         SizedBox(height: 20.0,),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(262),
                      height:getProportionateScreenHeight(150),
                     // height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),

                         child:  Stack(
                           children: [
                           InkWell(
                             onTap: (){
                              // print(2);
                             },
                             child: Image.asset(
                             'assets/Image Banner 2.png',
                          // fit: BoxFit.cover,
                         ),
                           ),
                             Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: Text.rich(
                                   TextSpan(
                                 style:TextStyle(color: Colors.white),
                                     children: [
                                       TextSpan(text: "Smartphone\n",style: TextStyle(
                                         fontSize: getProportionateScreenWidth(18),
                                         fontWeight: FontWeight.bold,
                                         color: Colors.orange,

                                       )),
                                       TextSpan(text: "18 brands",style: TextStyle(
                                         color: Colors.orange,
                                       )),
                                     ]
                               )),
                             )


                           ],
                         ),




                      ),

                    ),
                    SizedBox(width: 15.0,),
                    SizedBox(
                      width: getProportionateScreenWidth(262),
                      height:getProportionateScreenHeight(150),
                      // height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),

                        child:  Stack(
                          children: [
                            InkWell(
                              onTap: (){

                              },
                              child: Image.asset(
                                'assets/Image Banner 3.png',
                                // fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text.rich(
                                  TextSpan(
                                      style:TextStyle(color: Colors.white),
                                      children: [
                                        TextSpan(text: "Fashion\n",style: TextStyle(
                                          fontSize: getProportionateScreenWidth(18),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,

                                        )),
                                        TextSpan(text: "24 brands",style: TextStyle(
                                          color: Colors.orange,
                                        )),
                                      ]
                                  )),
                            )


                          ],
                        ),




                      ),

                    ),
                  ],
                ),
              ),
            ),
          //  Image(image: AssetImage('assets/Image Banner 2.png')),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // padd

          children: [
            SizedBox(width:30,height: 20.0,),
            Text(
              'Popular Product',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 190,),
            InkWell(
              onTap: (){},
              // borderRadius: BorderRadius.circular(10),
              // autofocus: true,
              // customBorder: ShapeBorder.,
              child: Text(
                'See More',
                style: TextStyle(
                  color: Colors.black38,
                  // fontStyle: FontStyle.
                  // fontFamily: Fon
                ),
              ),
            )
          ],),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                      // height:getProportionateScreenHeight(50),
                      // height: 100,

                           child: Column(
                             children: [
                               AspectRatio(
                                 aspectRatio: 1.02,
                                 child: Container(
                                   margin: EdgeInsets.all(15.0),
                                  padding:EdgeInsets.all(getProportionateScreenWidth(10)),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),

                                      child: Image.asset(
                                        'assets/Image Popular Product 1.png',
                                        // fit: BoxFit.cover,
                                      ),

                                 ),
                               ),
                               Text("Widget Console for"),
                               Text("PS4"),
                               Text("\$64.99",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                             ],
                           ),





                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                      // height:getProportionateScreenHeight(50),
                      // height: 100,

                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1.02,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:EdgeInsets.all(getProportionateScreenWidth(10)),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15.0),
                              ),

                              child: Image.asset(
                                'assets/Image Popular Product 2.png',
                                // fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Text("Nike Sport White"),
                          Text("Man Pant"),
                          Text("\$54.99",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                        ],
                      ),





                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                      // height:getProportionateScreenHeight(50),
                      // height: 100,

                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1.02,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:EdgeInsets.all(getProportionateScreenWidth(10)),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15.0),
                              ),

                              child: Image.asset(
                                'assets/glap.png',
                                // fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Text("Gloves Xc Omega-"),
                          Text("Polygon"),
                          Text("\$34.99",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                        ],
                      ),





                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(130),
                      // height:getProportionateScreenHeight(50),
                      // height: 100,

                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1.02,
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              padding:EdgeInsets.all(getProportionateScreenWidth(10)),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15.0),
                              ),

                              child: Image.asset(
                                'assets/wireless headset.png',
                                // fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Text("Logitech"),
                          Text("Headphones"),
                          Text("\$24.99",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                        ],
                      ),





                    ),

                  ],
                ),

            )


          ],
        ),
        
      ),
    bottomNavigationBar: Container(
      padding: EdgeInsets.symmetric(vertical: 9),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(width: 40.0),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Shop Icon.svg")),
            SizedBox(width: 50.0),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Heart Icon.svg")),
            SizedBox(width: 50.0),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/Chat bubble Icon.svg")),
            SizedBox(width: 50.0),
            IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>pp())),
                icon: SvgPicture.asset("assets/User Icon.svg")),
          ],
        ),
      ),
    ),

    );
  }
}
