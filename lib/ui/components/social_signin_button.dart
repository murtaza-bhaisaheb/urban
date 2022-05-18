import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSignInButton extends StatelessWidget {
  const SocialSignInButton({Key? key, this.onPressed, this.icon, required this.color})
      : super(key: key);
  final Function? onPressed;
  final IconData? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed,
      style: TextButton.styleFrom(
        side: BorderSide(
          color: color,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FaIcon(
            icon,
            color: color,
          ),
          Text(
            'Continue with Google',
            style: TextStyle(
              fontSize: 12.0,
              color: color,
              fontStyle: FontStyle.normal,
            ),
          ),
          Visibility(
            visible: true,
            child: FaIcon(
              icon,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
