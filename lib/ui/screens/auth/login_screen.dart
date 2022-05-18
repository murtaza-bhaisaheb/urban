import 'package:ecommerce/ui/components/login_header.dart';
import 'package:ecommerce/ui/components/password_field.dart';
import 'package:ecommerce/ui/components/social_signin_button.dart';
import 'package:ecommerce/ui/components/text_field_login.dart';
import 'package:ecommerce/ui/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  label: 'Login',
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFieldLogin(
                  hint: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                PasswordField(
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Login'),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF4DAAA7)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'forgot password?',
                            style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.blueGrey,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.blueGrey,
                              width: 0.2,
                            ),
                          ),
                          child: const Text(
                            'New customer? Sign Up',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
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
