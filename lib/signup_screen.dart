import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:demo_sign_in/login_screen.dart';
class ss extends StatefulWidget {
  const ss({Key? key}) : super(key: key);

  @override
  State<ss> createState() => _ssState();
}

class _ssState extends State<ss> {
  final _emailcontroller=TextEditingController();
  final _passwordcontroller=TextEditingController();
  void dispose()
  {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sign Up" ,style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding:EdgeInsets.fromLTRB(100.0, 80.0, 0.0, 0.0),
            child:Text("Register Account",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold)),
          ),
          Padding(padding:EdgeInsets.fromLTRB(80.0, 20.0, 0.0, 0.0),
              child:Text("Complete your details or continue ",style: TextStyle(color: Colors.grey,fontSize: 15.0))
          ),
          Padding(padding:EdgeInsets.fromLTRB(130.0, 5.0, 0.0, 0.0),
              child:Text("with social media ",style: TextStyle(color: Colors.grey,fontSize: 15.0))
          ),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
            child: TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.mail_outlined),
                  contentPadding: EdgeInsets.fromLTRB(25.0, 15.0,0.0,15.0),
                  hintText: ("Enter your mail"),
                  hintStyle: TextStyle(

                  ),
                  labelText: ("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: TextFormField(
              controller: _passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.password),
                  contentPadding: EdgeInsets.fromLTRB(25.0, 15.0,0.0,15.0),
                  hintText: ("Enter your Password"),
                  hintStyle: TextStyle(

                  ),
                  labelText: ("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              ),
            ),
          ),
          // SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.password),
                  contentPadding: EdgeInsets.fromLTRB(25.0, 15.0,0.0,15.0),
                  hintText: ("Re-Enter your Password"),
                  hintStyle: TextStyle(

                  ),
                  labelText: ("Confirm Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.fromLTRB(35.0,30.0,35.0,0.0) ,
            child: FloatingActionButton.extended(
              onPressed:() async {
                try{
                  final  user= (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailcontroller.text.trim(), password: _passwordcontroller.text.trim())).user;
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>ls()));
                }


                catch(e){
                  Alert(
                      context: context,
                      title: "Failed Login",
                      desc: "Incorrect Email Or Password.")
                      .show();

                }
              },
              label:Text("Continue"),
              backgroundColor: Colors.orange,
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ),
          SizedBox(height: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // Image(image:AssetImage("assets/google_icon.png"),height: 40.0,width: 40.0,),
              // Image(image:AssetImage("assets/fb.png"),height: 40.0,width: 40.0,),
              InkWell(

                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/google_icon.png'),
                ),
              ),
              SizedBox(width: 20.0,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/fb.png'),
              ),
              SizedBox(width: 20.0,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/twit.png'),
              )
            ],
          )
        ],

      ),
    );
  }
}



