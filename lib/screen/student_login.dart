import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/scanner_screen.dart';
import 'package:nfcapplication/screen/stafe_login_screen.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';
import 'Logged.dart';
import 'forget_password_screen.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({Key? key}) : super(key: key);
  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  final TextEditingController idControllar=TextEditingController();
  final TextEditingController passwordcontrollar=TextEditingController();

  List allColetionData=[];



  FirebaseAuth _auth=FirebaseAuth.instance;
  bool loder=false;
  @override
  Widget build(BuildContext context) {
    bool data=false;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  HederConteinar(),
                  Text('Student Login',style: GoogleFonts.aclonica(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('ID',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                      ),
                      TextFildWidget(name: 'Id',controller: idControllar,),
                      Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text('password',style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                      TextFildWidget(name: 'password', controller: passwordcontrollar),

                      // Padding(
                      //   padding: const EdgeInsets.only(right: 16),
                      //   child: Align(
                      //     alignment: Alignment.bottomRight,
                      //     child: GestureDetector(
                      //       onTap: (){
                      //         Navigator.push(context,MaterialPageRoute(builder: (_)=>ForgetPasswordScreen()));
                      //       },
                      //       child: Text('Forget Password?',style: GoogleFonts.alata(
                      //           textStyle: TextStyle(
                      //               fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white))),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 10,),
                    ],
                  ),
                  ButtonDesign(buttonname: 'Login',onTab: ()async{
                    QuerySnapshot querySnapshot = await student.get();

                    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
                    setState(() {
                      allColetionData=allData;
                    });
                    print(allColetionData);
                    for( int i=0;i<allColetionData.length;i++){
                      if(allColetionData[i]['id']==idControllar.text && allColetionData[i]['password']==passwordcontrollar.text ){
                        setState(() {
                          data=true;
                        });
                        print(data);
                        print(allColetionData[i]['id']);
                        print(allColetionData[i]['password']);

                      }else{

                        print(data);
                      }


                    }
                    // getData();

                      if(data==false)
                        {
                          Fluttertoast.showToast(
                              msg: "Login Error",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );


                        }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScannerScreen()));

                      }

                  },),
                  SizedBox(height: 10,),
                  // ButtonDesign(buttonname: 'NextPage',onTab: (){
                  //   Navigator.push(context,MaterialPageRoute(builder: (_)=>StafeLoginScreen()));
                  // },)

                ],
              ),
            ),
          ),
        ),
    );
  }

  CollectionReference student =
  FirebaseFirestore.instance.collection('Student');

  Future<void> getData() async {
    // Get docs from collection reference

  }

  Future colectData()async {
    getData();

    // for( int i=0;i<allColetionData.length;i++){
    //   if(allColetionData[i]['id']==idControllar.text && allColetionData[i]['password']==passwordcontrollar.text ){
    //     setState(() {
    //       data=true;
    //
    //     });
    //     print(allColetionData[i]['id']);
    //     print(allColetionData[i]['password']);
    //
    //   }else{
    //     setState(() {
    //       data=false;
    //
    //     });
    //     print(data);
    //   }
    //
    //
    // }

  }


}
