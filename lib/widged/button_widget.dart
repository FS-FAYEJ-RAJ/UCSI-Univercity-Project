import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  final String buttonname;
  final VoidCallback onTab;
  ButtonDesign({Key? key, required this.buttonname, required this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: MediaQuery.of(context).size.width /1.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white60),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
              child: Text(
            buttonname,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),
          )),
        ),
      ),
    );
  }
}
