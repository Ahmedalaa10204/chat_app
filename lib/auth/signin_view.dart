import 'package:chat_app/auth/signup_view.dart';
import 'package:chat_app/widgets2/custom_button.dart';
import 'package:chat_app/widgets2/custom_text.dart';

import 'package:flutter/material.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  bool isNotVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login To Your Account',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  label: 'Email',
                  prefixIcon: Icons.email,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'Password',
                  obscureText: isNotVisable,
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisable = !isNotVisable;
                        });
                      },
                      icon: Icon((isNotVisable)
                          ? Icons.visibility_off_rounded
                          : Icons.remove_red_eye_rounded)),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I haven\'t an account'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ));
                        },
                        child: const Text('Sign up!'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
