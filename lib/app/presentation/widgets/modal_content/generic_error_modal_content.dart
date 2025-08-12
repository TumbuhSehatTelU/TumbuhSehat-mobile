import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

class GenericErrorModalContent extends StatelessWidget {
  final String message;
  final List<Widget> actions;

  const GenericErrorModalContent({
    Key? key,
    required this.message,
    this.actions = const [], 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Lottie.asset(
          Assets.lottie.error,
          width: 120,
          height: 120,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 24),

        Text(
          message,
          textAlign: TextAlign.center,
          style: TSFont.semiBold.large.withColor(TSColor.monochrome.black),
        ),
        const SizedBox(height: 24),

        ...actions,
      ],
    );
  }
}
