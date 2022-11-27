import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/widged/button_widget.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {

  String getRuselt="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("PLEASE SCAN \n USING THE \n SCANNER",style: GoogleFonts.alata(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),
             SizedBox(height: 20,),
            ButtonDesign(buttonname: 'QR Scanner', onTab: (){
              VercodeScanner();
            }),

            Text(getRuselt.toString(),style: GoogleFonts.alata(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white))),



          ],
        ),
      ),
    );
  }

  void VercodeScanner()async{

    try{
      final qrcode=await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancle', true,ScanMode.QR);
      if(!mounted) return;

      setState(() {
        getRuselt=qrcode;
      });

    }on PlatformException{
      getRuselt='qr Code Scan Error';
    }



  }
}
