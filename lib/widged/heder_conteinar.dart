import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HederConteinar extends StatelessWidget {
  const HederConteinar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hig = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: hig / 3.5,
          width: wid / 1.5,
          decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black54)),
          child: Column(
            children: [
              ClipRect(
                child: Image.asset(
                  "images/unlogo.png",
                  height: 110,
                  width: 110,
                ),
              ),
              Text(
                "UCSI",
                style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
              ),
              Text(
                "Univercity",
                style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              )
            ],
          ),
        ));
  }
}
