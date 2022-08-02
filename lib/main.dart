import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:demo_sign_in/forgetpassword.dart';
import 'package:demo_sign_in/login_screen.dart';
import 'package:demo_sign_in/signup_screen.dart';
import 'package:demo_sign_in/Splash_screen.dart';
import 'package:demo_sign_in/main_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:demo_sign_in/size_ss.dart';
import 'package:demo_sign_in/theme.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Body(),
    theme: theme(),

  ));
}
// void main() => runApp(MaterialApp(
//   home: signin(),
// ));

class signin extends StatefulWidget {

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool? remember=false;
  String? hintTextPassword;
  String? hintTextEmail;
  Color?  passwordHintColor;
  Color? emailHintColor;

  final _emailcontroller=TextEditingController();
  final _passwordcontroller=TextEditingController();
//   Future MainPage() async{
//     await FirebaseAuth.instance.signInWithEmailAndPassword();
//
// }
 void dispose()
 {
   _emailcontroller.dispose();
   _passwordcontroller.dispose();
   super.dispose();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sign In" ,style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
    body:
        //padding: EdgeInsets.fromLTRB(125.0, 80.0, 0.0, 0.0),

         Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(padding:EdgeInsets.fromLTRB(125.0, 80.0, 0.0, 0.0),
                child:Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold)),
            ),
            Padding(padding:EdgeInsets.fromLTRB(80.0, 20.0, 0.0, 0.0),
              child:Text("Sign in with your email and password ",style: TextStyle(color: Colors.grey,fontSize: 15.0))
            ),
            Padding(padding:EdgeInsets.fromLTRB(110.0, 5.0, 0.0, 0.0),
                child:Text("or continue with social media ",style: TextStyle(color: Colors.grey,fontSize: 15.0))
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0,0.0),
                  child: Checkbox(value: remember, onChanged: (value){
                    setState((){
                      remember=value;
                    });
                  }),


                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0,0.0),
                  child: Text("Remember me"),


                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 10.0, 0.0, 0.0),
                  child: InkWell(
                    onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>fg())),

                    child:Text("Forgot Password"),
                  ),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.fromLTRB(35.0,10.0,35.0,0.0) ,
              child: FloatingActionButton.extended(
                label:Text("Continue"),
                backgroundColor: Colors.orange,
                onPressed:() async {
                  try{
                        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text.trim(), password: _passwordcontroller.text.trim());
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>ls()));
                  } on FirebaseAuthException
                  catch(e){
                  print(e);
                  showDialog(
                  context:context,
                  builder:(context){
                    return  AlertDialog(
                    content:Text(e.message.toString()),
                    );

                  }
                  );
                        }
                      }



           //   Navigator.push(context, route)shivank@gma

              ),
            ),

            Row(
              children: [
             Padding(padding: EdgeInsets.fromLTRB(80.0, 70.0, 20.0, 0.0),),
                Text("Don't have an account?"),
                InkWell(
                  onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ss())),
                  child: Text("Sign Up",style: TextStyle(
                    color: Colors.orange,
                  ),) ,
                ),

              ],
            ),
           // SizedBox(height: -1.0,),
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



