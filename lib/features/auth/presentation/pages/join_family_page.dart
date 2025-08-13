import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tumbuh_sehat/app/core/di/service_locator.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/core/utils/modal_utils.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/input_field/ts_text_field.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/modal_content/generic_error_modal_content.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/modal_content/generic_loading_modal_content.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/ts_shadow.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_event.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_state.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/widgets/auth_header.dart';

class JoinFamilyPage extends StatefulWidget {
  const JoinFamilyPage({super.key});

  @override
  State<JoinFamilyPage> createState() => _JoinFamilyPageState();
}

class _JoinFamilyPageState extends State<JoinFamilyPage> {
  final _formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _submitPhoneNumber(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
        FamilyExistenceChecked(_phoneController.text),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {
                showTSModal(
                  context: context,
                  isDismissible: false,
                  content: GenericLoadingModalContent(
                    lottieAnimation: Assets.lottie.search,
                    message: "Sedang mencari data keluarga",
                  ),
                );
              },
              familyFound: (family) {
                Navigator.of(context).pop();
                context.push('/', extra: _phoneController.text);
              },
              failure: (message) {
                Navigator.of(context).pop();
                showTSModal(
                  context: context,
                  isDismissible: false,
                  content: GenericErrorModalContent(
                    message: message,
                    actions: [
                      SizedBox(
                        width: double.infinity,
                        child: TSButton(
                          onPressed: () => Navigator.of(context).pop(),
                          text: 'Cari No Handphone Keluarga Lagi',
                          backgroundColor: TSColor.secondaryGreen.primary,
                          borderColor: TSColor.secondaryGreen.primary,
                          contentColor: TSColor.monochrome.black,
                          textStyle: TSFont.semiBold.large.withColor(
                            TSColor.monochrome.black,
                          ),
                          customBorderRadius: 248,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        child: TSButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            context.push('/');
                          },
                          text: 'Buat Akun Keluarga Baru',
                          backgroundColor: TSColor.monochrome.white,
                          borderColor: TSColor.secondaryGreen.primary,
                          contentColor: TSColor.monochrome.black,
                          textStyle: TSFont.semiBold.large.withColor(
                            TSColor.monochrome.black,
                          ),
                          customBorderRadius: 248,
                          borderWidth: 4,
                        ),
                      ),
                    ],
                  ),
                );
              },
              authenticated: (_, __) {},
              unauthenticated: () {},
              otpVerificationRequired: (String phone) {
                Navigator.of(context).pop();
                context.go('/verify-otp', extra: phone);
              },
            );
          },
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isTablet = constraints.maxWidth > 600;
                final double horizontalPadding = isTablet ? 60 : 24;

                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const AuthHeader(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            Text(
                              'Masukkan No Handphone\nKeluarga Anda',
                              style: isTablet
                                  ? TSFont.bold.h2ForTablet.withColor(
                                      TSColor.monochrome.black,
                                    )
                                  : TSFont.bold.h2.withColor(
                                      TSColor.monochrome.black,
                                    ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              'Gunakan No Handphone yang sama\nagar data keluarga saling terhubung',
                              style: isTablet
                                  ? TSFont.regular.largeForTablet.withColor(
                                      TSColor.monochrome.black,
                                    )
                                  : TSFont.regular.large.withColor(
                                      TSColor.monochrome.black,
                                    ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              children: [
                                Text(
                                  'No Handphone',
                                  textAlign: TextAlign.start,
                                  style: isTablet
                                      ? TSFont.bold.largeForTablet.withColor(
                                          TSColor.monochrome.black,
                                        )
                                      : TSFont.bold.large.withColor(
                                          TSColor.monochrome.black,
                                        ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            TSTextField(
                              controller: _phoneController,
                              borderRadius: 248,
                              hintText: 'Contoh: 0812 3333 4444 5555',
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              onFieldSubmitted: (_) =>
                                  _submitPhoneNumber(context),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'No Handphone tidak boleh kosong';
                                }
                                if (value.length < 8) {
                                  return 'No Handphone tidak valid.';
                                }
                                return null;
                              },
                              focusedBorderColor:
                                  TSColor.secondaryGreen.primary,
                              boxShadow: TSShadow.shadows.weight200,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            TSButton(
                              onPressed: () => _submitPhoneNumber(context),
                              text: 'Lanjutkan',
                              backgroundColor: TSColor.secondaryGreen.primary,
                              borderColor: TSColor.secondaryGreen.primary,
                              contentColor: TSColor.monochrome.black,
                              textStyle: isTablet
                                  ? TSFont.bold.largeForTablet.withColor(
                                      TSColor.monochrome.black,
                                    )
                                  : TSFont.bold.large.withColor(
                                      TSColor.monochrome.black,
                                    ),
                              customBorderRadius: 248,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
