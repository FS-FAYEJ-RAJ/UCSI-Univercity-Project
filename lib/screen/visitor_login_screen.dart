import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nfcapplication/screen/active_nfc_page.dart';
import 'package:nfcapplication/screen/forget_password_screen.dart';
import 'package:nfcapplication/them/color_them.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';

class VisitorLoginScreen extends StatefulWidget {
  const VisitorLoginScreen({Key? key}) : super(key: key);

  @override
  State<VisitorLoginScreen> createState() => _VisitorLoginScreenState();
}

class _VisitorLoginScreenState extends State<VisitorLoginScreen> {
  final TextEditingController nameControllar=TextEditingController();
  final TextEditingController passwordcontrollar=TextEditingController();
  final TextEditingController idControllar=TextEditingController();
  final TextEditingController emailcontrollar=TextEditingController();

  bool loder=false;
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
                Text('Visitor',style: GoogleFonts.aclonica(
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
                    TextFildWidget(name: 'Name',controller: nameControllar,),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('ID',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                    TextFildWidget(name: 'ID', controller: idControllar),
                    //  porer TextFile 2 ta Akhane Nilam
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Email Address',style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                    ),
                    TextFildWidget(name: 'Email',controller: emailcontrollar,),
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
                  child:loder ? Center(child: CircularProgressIndicator(),) : ButtonDesign(buttonname: 'Login',onTab: (){
                    visitorlogin();
                  },),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Future visitorlogin() async{
    setState(() {
      loder=true;
    });

    await FirebaseFirestore.instance.collection('visitor').add(
      {
        "name" : nameControllar.text,
        "id" : idControllar.text,
        "email" : emailcontrollar.text,
        "password" :passwordcontrollar.text

      }

    );
    setState(() {
      Fluttertoast.showToast(
          msg: " Visitor Login Success",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

      loder=false;
    });

  }
}
