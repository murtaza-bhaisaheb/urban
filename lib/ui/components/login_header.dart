import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 6.0,),
              Container(
                height: 3.0,
                color: const Color(0xFF4DAAA7),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Visibility(
            visible: false,
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ],
    );
  }
}
