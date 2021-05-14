import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gametracker/helpers/custom_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/logo.svg',
            width: 256,
            color: CustomColors.secondaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 44.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(CustomColors.secondaryColor),
            ),
          )
        ],
      ))),
    );
  }
}
