import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVectors.logo),
        //     Image.asset(
        //   "/home/developer/flutter/musicplayer/assets/vectors/spotify_logo.svg",
        //   fit: BoxFit.cover,
        //  ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const GetStartedPage(),
      ),
    );
  }
}
