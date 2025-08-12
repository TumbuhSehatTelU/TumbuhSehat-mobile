import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';

Future<void> showTSModal({
  required BuildContext context,
  required Widget content,
  bool isDismissible = true, 
}) async {
  await showDialog(
    context: context,
    barrierDismissible: isDismissible,
    builder: (BuildContext dialogContext) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: TSColor.monochrome.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              content,
            ],
          ),
        ),
      );
    },
  );
}
