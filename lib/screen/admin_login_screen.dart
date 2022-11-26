import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nfcapplication/screen/admin_register.dart';
import 'package:nfcapplication/them/color_them.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final TextEditingController idControllar = TextEditingController();
  final TextEditingController passwordcontrollar = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  bool loder =false;
  @override
  Widget build(BuildContext context) {
    var hig = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Admin Login',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              HederConteinar(),
              Text(
                'Login Hare',
                style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Admin ID',
                      style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white)),
                    ),
                  ),
                  TextFildWidget(
                    name: 'Id',
                    controller: idControllar,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('password',
                          style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white)))),
                  TextFildWidget(
                      name: 'password', controller: passwordcontrollar),
                ],
              ),
            loder? Center(child: CircularProgressIndicator(),): ButtonDesign(
                buttonname: 'Login',
                onTab: () {
                  
                  adminLogin();
                  idControllar.clear();
                  passwordcontrollar.clear();
                },
              ),
              // SizedBox(
              //   height: 5,
              // ),
              // ButtonDesign(
              //   buttonname: 'NextPage',
              //   onTab: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (_) => AdminRegister()));
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }

  Future adminLogin() async {
    try {
      setState(() {
        loder=true;
      });
      await _auth.signInWithEmailAndPassword(
          email: idControllar.text, password: passwordcontrollar.text);
      Fluttertoast.showToast(
          msg: "Login Sucssfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      
      Navigator.push(context, MaterialPageRoute(builder: (_)=>AdminRegister()));
      

    } on FirebaseAuthException catch (error) {
      setState(() {
        Fluttertoast.showToast(
            msg: "${error.message}",
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
}
