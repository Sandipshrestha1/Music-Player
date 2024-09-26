import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicplayer/common/helpers/is_dark_mode.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_images.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/core/configs/theme/app_colors.dart';

class Signuporsignin extends StatelessWidget {
  const Signuporsignin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo,
                  ),
                  const SizedBox(height: 55),
                  const Text(
                    "Hello Sandip ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  const Text(
                    "Spotify is a proprietary swedis audio streaming and media services provided",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: AppColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {},
                          title: "Register",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
