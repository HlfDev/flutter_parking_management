import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAssetAtom extends StatelessWidget {
  final String asset;

  const LottieAssetAtom({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(asset);
  }
}
