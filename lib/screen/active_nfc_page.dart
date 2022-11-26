import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/student_login.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';
class ActiveNFC extends StatefulWidget {
  const ActiveNFC({Key? key}) : super(key: key);

  @override
  State<ActiveNFC> createState() => _ActiveNFCState();
}

class _ActiveNFCState extends State<ActiveNFC> {
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
            Text('ADMIN PANNEL',style: GoogleFonts.alata(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30,color: Colors.indigo))),
               SizedBox(height: 25,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 16.0),
                     child: Text('STUDENT/STAFE ID',style: GoogleFonts.alata(
                         textStyle: TextStyle(
                             fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white))),
                   ),
                   TextFildWidget(name: 'ID', controller: idcontrollar),
                 ],
               ),
               SizedBox(height: 20,),

               ButtonDesign(buttonname: 'ACTIVE NFC TAG',onTab: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=>StudentLoginScreen()));
               },)
             ],
          ),
        ),
      )),
    );
  }
}
