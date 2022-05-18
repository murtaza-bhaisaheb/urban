import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {

  const TextFieldLogin({Key? key, required this.hint, required this.controller }) : super(key: key);
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
    );
  }
}
