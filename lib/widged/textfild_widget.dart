import 'package:flutter/material.dart';
class TextFildWidget extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  const TextFildWidget({Key? key, required this.name, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: name,
          filled: true,
          fillColor:Colors.white60,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:BorderSide(color:Colors.white10)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:BorderSide(
                  color: Colors.white,
                  width: 1
              )
          ),
        ),

      ),
    );
  }
}
