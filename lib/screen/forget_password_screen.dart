import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/change_password_screen.dart';
import 'package:nfcapplication/screen/student_login.dart';
import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController idcontrollar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:SafeArea(child: SingleChildScrollView(
        child: Align(
          child: Column(
            children: [
              HederConteinar(),
              Text('Forget Password',style: GoogleFonts.alata(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30,color: Colors.indigo))),
              SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text('STUDENT/STAFE EMAIL',style: GoogleFonts.alata(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white))),
                  ),
                  TextFildWidget(name: 'Email', controller: idcontrollar),
                ],
              ),
              SizedBox(height: 20,),

              ButtonDesign(buttonname: 'Reset Password',onTab: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>ResetPassword()));
              },)
            ],
          ),
        ),
      )),
    );
  }
}
