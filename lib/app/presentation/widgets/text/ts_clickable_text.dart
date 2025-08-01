import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

class TSClickableText extends StatelessWidget {
  final String nonClickableText;
  final String clickableText;
  final VoidCallback onTap;
  final TextStyle? nonClickableStyle;
  final TextStyle? clickableStyle;
  final TextAlign textAlign;

  const TSClickableText({
    super.key,
    required this.nonClickableText,
    required this.clickableText,
    required this.onTap,
    this.nonClickableStyle,
    this.clickableStyle,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    final defaultNonClickableStyle = nonClickableStyle ??
        TSFont.regular.body.withColor(TSColor.monochrome.grey);

    final defaultClickableStyle = clickableStyle ??
        TSFont.semiBold.body.withColor(TSColor.mainTosca.primary);

    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: defaultNonClickableStyle,
        children: <TextSpan>[
          TextSpan(text: nonClickableText),
          TextSpan(
            text: clickableText,
            style: defaultClickableStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
