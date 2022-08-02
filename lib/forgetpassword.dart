import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:demo_sign_in/main.dart';
class fg extends StatefulWidget {
  const fg({Key? key}) : super(key: key);

  @override
  State<fg> createState() => _fgState();
}

class _fgState extends State<fg> {
  final _emailcontroller=TextEditingController();
  void dispose()
  {
    _emailcontroller.dispose();
  //  _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
                child:Text(
                  "Enter Your Email and we will send you a password reset link",
                //  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                )
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

            Padding(
              padding:EdgeInsets.fromLTRB(35.0,10.0,35.0,0.0) ,
              child: FloatingActionButton.extended(
                  label:Text("Reset Password"),
                  backgroundColor: Colors.orange,
                  onPressed:() async {
                    try{
                      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailcontroller.text.trim());
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>signin()));
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

          ],
        )
    );
  }
}
