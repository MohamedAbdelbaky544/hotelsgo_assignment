import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
            LottieBuilder.asset('assets/animation/connectivity_animation.json'),
      ),
    );
  }
}
