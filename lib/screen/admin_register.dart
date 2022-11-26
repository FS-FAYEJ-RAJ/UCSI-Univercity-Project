import 'package:flutter/material.dart';
import 'package:nfcapplication/screen/active_nfc_page.dart';
import 'package:nfcapplication/them/color_them.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';

class AdminRegister extends StatefulWidget {
  const AdminRegister({Key? key}) : super(key: key);

  @override
  State<AdminRegister> createState() => _AdminRegisterState();
}

class _AdminRegisterState extends State<AdminRegister> {
  final TextEditingController idControllar=TextEditingController();
  final TextEditingController passwordcontrollar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var hig = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Employee ADD',),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                HederConteinar(),
                Text('Register Hare',style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Name',style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                    ),
                    TextFildWidget(name: 'Name',controller: idControllar,),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('ID',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                    TextFildWidget(name: 'ID', controller: passwordcontrollar),
                  //  porer TextFile 2 ta Akhane Nilam
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Email Address',style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                    ),
                    TextFildWidget(name: 'Email',controller: idControllar,),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('password',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                    TextFildWidget(name: 'password', controller: passwordcontrollar),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonDesign(buttonname: 'Student',onTab: (){},),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonDesign(buttonname: 'LECTURER',onTab: (){},),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonDesign(buttonname: 'ADD TO NFC TAG',onTab: (){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>ActiveNFC()));
                  },),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
