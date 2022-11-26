import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/first_screen.dart';
import 'package:nfcapplication/screen/visitor_login_screen.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController idControllar=TextEditingController();
  final TextEditingController passwordcontrollar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                HederConteinar(),
                Text('Change Password',style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Current Password',style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                    ),
                    TextFildWidget(name: '',controller: idControllar,),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('New Password',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                    TextFildWidget(name: '', controller: passwordcontrollar),

                  ],
                ),
                ButtonDesign(buttonname: 'Reset Password',onTab: (){},),
                SizedBox(height: 10,),
                ButtonDesign(buttonname: 'NextPage',onTab: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=>WellComeScreen()));
                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
