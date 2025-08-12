import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class VerifyOtpForJoinUseCase {
  final AuthRepository _repository;

  VerifyOtpForJoinUseCase(this._repository);

  Future<void> call(VerifyOtpForJoinParams params) async {
    return await _repository.verifyOtpForJoin(
      phone: params.phone,
      otp: params.otp,
    );
  }
}

class VerifyOtpForJoinParams {
  final String phone;
  final String otp;

  VerifyOtpForJoinParams({required this.phone, required this.otp});
}
