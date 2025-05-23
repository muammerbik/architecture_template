import 'package:architecture_template/core/constants/colors.dart';
import 'package:architecture_template/core/constants/json.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

///LoadingPageView
class LoadingPageView extends StatelessWidget {
  const LoadingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Center(
        child: SizedBox(
          height: 250,
          width: 250,
          child: Lottie.asset(AppJson.loadingJson),
        ),
      ),
    );
  }
}
