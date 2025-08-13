import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tumbuh_sehat/app/core/di/service_locator.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/core/utils/modal_utils.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/input_field/ts_otp_field.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/modal_content/generic_error_modal_content.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/text/ts_clickable_text.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_event.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_state.dart';

class VerifyOtpPage extends StatefulWidget {
  final String phone;

  const VerifyOtpPage({Key? key, required this.phone}) : super(key: key);

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  String _otpCode = '';
  bool _isOtpComplete = false;
  String? _errorMessage;

  int _resendAttempts = 0;
  final int _maxResendAttempts = 5;
  int _countdown = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _countdown = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() => _countdown--);
      } else {
        timer.cancel();
      }
    });
  }

  void _resendCode() {
    if (_countdown == 0) {
      if (_resendAttempts < _maxResendAttempts) {
        setState(() {
          _resendAttempts++;
          _errorMessage = null;
        });
        _startTimer();
        context.read<AuthBloc>().add(JoinOtpRequested(widget.phone));
      } else {        
        showTSModal(
          context: context,
          isDismissible: false,
          content: GenericErrorModalContent(
            message: 'Anda sudah mencapai batas untuk mengirim ulang kode OTP',
            actions: [
              SizedBox(
                width: double.infinity,
                child: TSButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.go('/register-new-family');
                  },
                  text: 'Daftar Ulang',
                  backgroundColor: TSColor.secondaryGreen.primary,
                  borderColor: Colors.transparent,
                  contentColor: TSColor.monochrome.black,
                ),
              ),
            ],
          ),
        );
      }
    }
  }

  void _verifyOtp() {
    if (_isOtpComplete) {
      context.read<AuthBloc>().add(
        JoinOtpVerified(phone: widget.phone, otp: _otpCode),
      );
    }
  }

  String _maskPhoneNumber(String phone) {
    if (phone.length < 7) return phone;
    return '${phone.substring(0, 3)}****${phone.substring(phone.length - 3)}';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: Scaffold(
        backgroundColor: TSColor.monochrome.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: TSColor.monochrome.black),
            onPressed: () => context.pop(),
          ),
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () {
              },
              familyFound: (family) {
                context.go('/register-join-family', extra: widget.phone);
              },
              failure: (message) {
                setState(() => _errorMessage = message);
              },
            );
          },
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Assets.image.logo.svg(height: 60),
                  const SizedBox(height: 48),
                  Text('Verifikasi', style: TSFont.bold.h1),
                  Text('No Handphone Anda', style: TSFont.bold.h1),
                  const SizedBox(height: 16),
                  Text(
                    'Kode OTP telah dikirim melalui SMS\nke ${_maskPhoneNumber(widget.phone)}',
                    textAlign: TextAlign.center,
                    style: TSFont.regular.body.withColor(
                      TSColor.monochrome.grey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  TSOtpField(
                    onChanged: (value) {
                      if (_errorMessage != null) {
                        setState(() => _errorMessage = null);
                      }
                    },
                    onCompleted: (otp) {
                      setState(() {
                        _otpCode = otp;
                        _isOtpComplete = true;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  if (_errorMessage != null)
                    Text(
                      _errorMessage!,
                      style: TSFont.regular.body.withColor(
                        TSColor.additionalColor.red,
                      ),
                    ),
                  const SizedBox(height: 24),
                  TSClickableText(
                    nonClickableText: 'Belum mendapatkan kode? ',
                    clickableText:
                        'Kirim Ulang Kode ${_countdown > 0 ? '(${_countdown}s)' : ''}',
                    onTap: _resendCode,
                    clickableStyle: _countdown > 0
                        ? TSFont.semiBold.body.withColor(
                            TSColor.monochrome.lightGrey,
                          )
                        : TSFont.semiBold.body.withColor(
                            TSColor.mainTosca.primary,
                          ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: TSButton(
                      onPressed: _isOtpComplete ? _verifyOtp : null,
                      text: 'Kirim',
                      backgroundColor: _isOtpComplete
                          ? TSColor.secondaryGreen.primary
                          : TSColor.monochrome.lightGrey,
                      borderColor: Colors.transparent,
                      contentColor: _isOtpComplete
                          ? TSColor.monochrome.black
                          : TSColor.monochrome.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
