import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/component/shadow/shadow.dart';

// Contoh Penggunaan

// final TextEditingController emailController = TextEditingController();
// final GlobalKey<_CustomTextFieldState> emailFieldKey = GlobalKey();

// CustomTextField(
//   key: emailFieldKey,
//   placeholder: "Masukkan email",
//   backgroundColor: Colors.white,
//   borderColor: Colors.grey,
//   textColor: Colors.black,
//   placeholderColor: Colors.grey,
//   isPassword: false,
//   borderRadius: 12,
//   width: MediaQuery.of(context).size.width * 0.8,
//   boxShadow: TS_shadow.light,
//   controller: emailController,
//   validationLogic: (text) {
//     if (text.isEmpty) return "Email tidak boleh kosong";
//     if (!text.contains('@')) return "Email tidak valid";
//     return null;
//   },
// ),
// const SizedBox(height: 20),
// ElevatedButton(
//   onPressed: () {
//     // Jalankan validasi saat button ditekan
//     emailFieldKey.currentState?.validate();
//     if (emailController.text.contains('@')) {
//       print("Submit berhasil dengan email: ${emailController.text}");
//     }
//   },
//   child: const Text("Submit"),
// ),

class CustomTextField extends StatefulWidget {
  final String placeholder;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Color placeholderColor;
  final bool isPassword;
  final double borderRadius;
  final double width;
  final List<BoxShadow> boxShadow;
  final TextEditingController controller;
  final String? Function(String)? validationLogic;
  final String? validationMessage;

  const CustomTextField({
    Key? key,
    required this.placeholder,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.placeholderColor,
    required this.isPassword,
    required this.borderRadius,
    required this.width,
    required this.boxShadow,
    required this.controller,
    this.validationLogic,
    this.validationMessage,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  String? _errorText;

  void validate() {
    if (widget.validationLogic != null) {
      final result = widget.validationLogic!(widget.controller.text);
      setState(() {
        _errorText = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: widget.width,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: Border.all(color: widget.borderColor, width: 2),
            borderRadius: BorderRadius.circular(widget.borderRadius),
            boxShadow: widget.boxShadow,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  obscureText: widget.isPassword ? _obscureText : false,
                  style: TextStyle(color: widget.textColor),
                  decoration: InputDecoration(
                    hintText: widget.placeholder,
                    hintStyle: TextStyle(color: widget.placeholderColor),
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (widget.isPassword)
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: widget.placeholderColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
            ],
          ),
        ),
        if (_errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 8),
            child: Text(
              _errorText!,
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
