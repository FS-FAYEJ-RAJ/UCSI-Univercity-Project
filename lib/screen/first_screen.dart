import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/home_screen.dart';
import 'package:nfcapplication/widged/heder_conteinar.dart';

import '../widged/button_widget.dart';
class WellComeScreen extends StatefulWidget {
  const WellComeScreen({Key? key}) : super(key: key);

  @override
  State<WellComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WellComeScreen> {
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

              Text('WelCome',style: GoogleFonts.alata(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white))),
              Text('TO UCSI',style: GoogleFonts.alata(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),
              SizedBox(height: 40,),
              ButtonDesign(buttonname: 'Go TO Profile',onTab: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>HomeScreen()));
              },)

            ],
          ),
        ),
      ),
    );
  }
}
