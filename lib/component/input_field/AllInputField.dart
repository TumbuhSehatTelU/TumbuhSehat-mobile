import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/component/input_field/text_field.dart';

class TS_inputfield {
  static Widget text({
    Key? key,
    required String placeholder,
    required Color backgroundColor,
    required Color borderColor,
    required bool isPassword,
    required double borderRadius,
    required double width,
    required List<BoxShadow> boxShadow,
    required TextEditingController controller,
    required List<bool Function(String)> validationLogicList,
    required List<String> validationMessageList,
  }) {
    return CustomTextField(
      key: key,
      placeholder: placeholder,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      isPassword: isPassword,
      borderRadius: borderRadius,
      width: width,
      boxShadow: boxShadow,
      controller: controller,
      validationLogicList: validationLogicList,
      validationMessageList: validationMessageList,
    );
  }
}
