import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class RequestOtpForJoinUseCase {
  final AuthRepository _repository;

  RequestOtpForJoinUseCase(this._repository);

  Future<void> call(String phone) async {
    return await _repository.requestOtpForJoin(phone);
  }
}
