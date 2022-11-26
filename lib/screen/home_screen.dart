import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/admin_login_screen.dart';
import 'package:nfcapplication/screen/stafe_login_screen.dart';
import 'package:nfcapplication/screen/student_login.dart';
import 'package:nfcapplication/screen/visitor_login_screen.dart';
import 'package:nfcapplication/widged/heder_conteinar.dart';

import '../widged/button_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HederConteinar(),

              Text('WelCome To',style: GoogleFonts.alata(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white))),
              Text('Smart Access',style: GoogleFonts.alata(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),
              SizedBox(height: 10,),
              ButtonDesign(buttonname: 'ADMIN',onTab: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>AdminLogin()));
              },),
              SizedBox(height: 10,),
              ButtonDesign(buttonname: 'STAFE',onTab: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>StafeLoginScreen()));
              },),
              SizedBox(height: 10,),
              ButtonDesign(buttonname: 'Student',onTab: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>StudentLoginScreen()));
              },),
              SizedBox(height: 10,),
              ButtonDesign(buttonname: 'Visitor',onTab: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>VisitorLoginScreen()));
              },)

            ],
          ),
        ),
      ),
    );
  }
}
