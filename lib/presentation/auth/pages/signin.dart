import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/data/models/auth/signin_user_req.dart';
import 'package:musicplayer/domain/usecase/auth/signin.dart';
import 'package:musicplayer/presentation/auth/pages/signup.dart';
import 'package:musicplayer/presentation/root/page/root.dart';
import 'package:musicplayer/service_locator.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _registerText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 35,
          width: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _signInText(),
              const SizedBox(height: 50),
              _emailNameField(context),
              const SizedBox(height: 20),
              _passwordField(context),
              const SizedBox(height: 20),
              BasicAppButton(
                  onPressed: () async {
                    var result = await sl<SigninUseCase>().call(
                        params: SigninUserReq(
                            email: _email.text.toString(),
                            password: _password.text.toString()));

                    result.fold((l) {
                      var snackbar = SnackBar(
                        content: Text(l),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }, (r) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RootPage()),
                        (route) => false,
                      );
                    });
                  },
                  title: "Sign In"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInText() {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailNameField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: const InputDecoration(
        hintText: 'Email Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _registerText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Not A Member? ",
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
                  builder: (BuildContext context) => SignupPage(),
                ),
              );
            },
            child: const Text("Register Now"),
          ),
        ],
      ),
    );
  }
}
