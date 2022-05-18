import 'package:ecommerce/ui/components/login_header.dart';
import 'package:ecommerce/ui/components/password_field.dart';
import 'package:ecommerce/ui/components/social_signin_button.dart';
import 'package:ecommerce/ui/components/text_field_login.dart';
import 'package:ecommerce/ui/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Urban.png',
                    width: MediaQuery.of(context).size.shortestSide / 4,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const LoginHeader(
                  label: 'Sign Up',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFieldLogin(hint: 'Name', controller: nameController),
                const SizedBox(
                  height: 10.0,
                ),
                TextFieldLogin(hint: 'Email', controller: emailController),
                const SizedBox(
                  height: 10.0,
                ),
                TextFieldLogin(hint: 'Phone', controller: phoneController),
                const SizedBox(
                  height: 10.0,
                ),
                PasswordField(
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF4DAAA7)),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(40, 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Already a customer? Sign In',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12.0,
                            decoration: TextDecoration.underline,
                            color: Colors.blueGrey),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SocialSignInButton(
                  onPressed: () {},
                  icon: FontAwesomeIcons.google,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
