import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/component/input_field/text_field.dart';

class Ts_inputfield {
  static Widget textField({
    required String placeholder,
    required Color backgroundColor,
    required Color borderColor,
    required Color textColor,
    required Color placeholderColor,
    required bool isPassword,
    required double borderRadius,
    required double width,
    required List<BoxShadow> boxShadow,
    required TextEditingController controller,
    String? Function(String)? validationLogic,
    String? validationMessage,
  }) {
    return CustomTextField(
      placeholder: placeholder,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      textColor: textColor,
      placeholderColor: placeholderColor,
      isPassword: isPassword,
      borderRadius: borderRadius,
      width: width,
      boxShadow: boxShadow,
      controller: controller,
      validationLogic: validationLogic,
      validationMessage: validationMessage,
    );
  }
}
