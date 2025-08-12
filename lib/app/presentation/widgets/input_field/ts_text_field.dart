import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/ts_shadow.dart';

class TSTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final List<BoxShadow>? boxShadow;
  final double? borderRadius;
  final Color? focusedBorderColor;

  const TSTextField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.textInputAction,
    this.onFieldSubmitted,
    this.boxShadow,
    this.borderRadius,
    this.focusedBorderColor,
  });

  @override
  State<TSTextField> createState() => _TSTextFieldState();
}

class _TSTextFieldState extends State<TSTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = BorderRadius.circular(
      widget.borderRadius ?? 12,
    );
    final effectiveBoxShadow = widget.boxShadow ?? TSShadow.shadows.weight100;

    return Container(
      decoration: BoxDecoration(
        boxShadow: effectiveBoxShadow,
        borderRadius: effectiveBorderRadius,
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? _isObscured : false,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: widget.onFieldSubmitted,
        style: TSFont.regular.body.withColor(TSColor.monochrome.black),
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hintText,
          labelStyle: TSFont.regular.body.withColor(TSColor.monochrome.grey),
          hintStyle: TSFont.regular.body.withColor(TSColor.monochrome.grey),
          filled: true,
          fillColor: TSColor.monochrome.pureWhite,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                    color: TSColor.monochrome.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: effectiveBorderRadius,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: effectiveBorderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: effectiveBorderRadius,
            borderSide: BorderSide(
              color: widget.focusedBorderColor ?? TSColor.mainTosca.primary,
              width: 4,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: effectiveBorderRadius,
            borderSide: BorderSide(
              color: TSColor.additionalColor.red,
              width: 4,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: effectiveBorderRadius,
            borderSide: BorderSide(
              color: TSColor.additionalColor.red,
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}
