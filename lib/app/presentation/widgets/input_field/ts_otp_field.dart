import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

class TSOtpField extends StatefulWidget {
  final int length;
  final void Function(String otp) onCompleted;
  final bool autofocus;

  const TSOtpField({
    Key? key,
    this.length = 6,
    required this.onCompleted,
    this.autofocus = true,
  }) : super(key: key);

  @override
  State<TSOtpField> createState() => _TSOtpFieldState();
}

class _TSOtpFieldState extends State<TSOtpField> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _nodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _nodes = List.generate(widget.length, (_) => FocusNode());

    if (widget.autofocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _nodes[0].requestFocus();
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _nodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onTextChanged(String value, int index) {
    if (value.isNotEmpty && index < widget.length - 1) {
      _nodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _nodes[index - 1].requestFocus();
    }

    final otp = _controllers.map((c) => c.text).join('');
    if (otp.length == widget.length) {
      widget.onCompleted(otp);
      _nodes[index].unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.length, (index) {
        return SizedBox(
          width: 48,
          height: 48,
          child: TextFormField(
            controller: _controllers[index],
            focusNode: _nodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            style: TSFont.semiBold.h3.withColor(TSColor.monochrome.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: TSColor.monochrome.lightGrey.withOpacity(0.2),
              counterText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: TSColor.mainTosca.primary, width: 2),
              ),
            ),
            onChanged: (value) => _onTextChanged(value, index),
          ),
        );
      }),
    );
  }
}
