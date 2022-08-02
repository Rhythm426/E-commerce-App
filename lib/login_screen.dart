import 'package:flutter/material.dart';
import 'package:demo_sign_in/main_page.dart';
class ls extends StatelessWidget {
  const ls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Success',style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 60.0,),
          Image(image:  AssetImage("assets/success.png")),
          Text("Login Success",style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        SizedBox(height: 50.0,),
          FloatingActionButton.extended(
              label: Text("Back to home"),
            backgroundColor: Colors.deepOrangeAccent,
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          },

          )


        ],
      )
    );
  }
}
