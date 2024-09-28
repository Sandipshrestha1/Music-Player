import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/presentation/auth/pages/signin.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 35,
          width: 35,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50),
            _fullNameField(context),
            const SizedBox(height: 20),
            _emailNameField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            BasicAppButton(onPressed: () {}, title: "Create Account"),
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Register",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _emailNameField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Email Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Do you have an account?",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const SignIn()));
            },
            child: const Text("Sign In"))
      ]),
    );
  }
}
