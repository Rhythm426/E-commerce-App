import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'screens/screen_size.dart';
import 'package:demo_sign_in/size_ss.dart';

class app_cart extends StatelessWidget {
  const app_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cart();
  }
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(
                width: 90,
                // height: 20,
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black12,//Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/product 1 image.png'),
                  ),
                ),
              ),

              SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('GreenFibre Tshirt For Men Yellow',
                    style: TextStyle(color: Colors.black54,fontSize: 15),
                    // fontS
                  ),
                  SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                        text: 'Rs 1399.00',
                        style: TextStyle(
                          color: Colors.redAccent,
                          // fontSize: 15,
                        ),
                        children: [TextSpan(text: '  x1',style: TextStyle(color: Colors.black45 ))]
                    ),
                  )
                ],
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(
                width: 90,
                // height: 20,
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black12,//Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/ps4_console_blue_1.png'),
                  ),
                ),
              ),

              SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wireless Controller for PS4',
                    style: TextStyle(color: Colors.black54,fontSize: 15),
                    // fontS
                  ),
                  SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                        text: 'Rs 4499.00',
                        style: TextStyle(
                          color: Colors.redAccent,
                          // fontSize: 15,
                        ),
                        children: [TextSpan(text: '  x2',style: TextStyle(color: Colors.black45 ))]
                    ),
                  )
                ],
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(
                width: 90,
                // height: 20,
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black12,//Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/shoes2.png'),
                  ),
                ),
              ),

              SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nike Air Max 97 multicolur',
                    style: TextStyle(color: Colors.black54,fontSize: 15),
                    // fontS
                  ),
                  SizedBox(height: 10,),
                  Text.rich(
                    TextSpan(
                        text: 'Rs 11,499.00',
                        style: TextStyle(
                          color: Colors.redAccent,
                          // fontSize: 15,
                        ),
                        children: [TextSpan(text: '  x1',style: TextStyle(color: Colors.black45 ))]
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      //------------------*********** body **************----------------

      body: Body(),


      bottomNavigationBar: buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
          boxShadow: [BoxShadow(
            offset:Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
          ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.receipt,
                  color: Colors.orange,
                ),
                // Te
              ),
              SizedBox(width: 170,),
              Text('Add Voucher Code'),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black45,)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: "Total\n",
                  children:[
                    TextSpan(
                      text: 'Rs 17,397',
                      style: TextStyle(fontSize: 16,color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 80,),
              SizedBox(
                width: 190,
                // padd
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  color: Colors.orange,
                  hoverColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //
                ),
              )

            ],
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black87),
      centerTitle: true,
      elevation: 0,
      title: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              fontSize: 20,
              // fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),

          ),
          Text(
            '3 items',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black38,

            ),
          ),
        ],
      ),
    );
  }

// stles

}