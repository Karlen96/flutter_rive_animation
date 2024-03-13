import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../constants/assets.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          const RiveAnimation.asset(
            Assets.riveAnimation,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
