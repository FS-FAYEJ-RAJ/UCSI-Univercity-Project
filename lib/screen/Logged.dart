

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/widged/button_widget.dart';

import '../widged/heder_conteinar.dart';

class Logged extends StatefulWidget {
  const Logged({Key? key}) : super(key: key);

  @override
  State<Logged> createState() => _LoggedState();
}

class _LoggedState extends State<Logged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           const Align(
               alignment: Alignment.center,
               child: HederConteinar()),
           Text('WelCome'.toUpperCase(),style: GoogleFonts.alata(
               textStyle: const TextStyle(
                   fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white))),
           Text('to UCSI'.toUpperCase(),style: GoogleFonts.alata(
               textStyle: const TextStyle(
                   fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),

           ButtonDesign(buttonname: "Profile", onTab: (){



           }),
           ButtonDesign(buttonname: "Logout", onTab: (){

           }),

         ],
        ),
      ),
    );
  }
}
