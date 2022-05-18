import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget.controller,
              style: const TextStyle(fontSize: 14.0),
              decoration: const InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              obscureText: !showPassword,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: const Icon(
              Icons.remove_red_eye,
              color: Colors.black45,
            ),
            splashRadius: 10.0,
          )
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
