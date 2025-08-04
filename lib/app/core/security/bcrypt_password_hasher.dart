import 'package:bcrypt/bcrypt.dart';
import 'package:mobile_tumbuh_sehat/app/core/security/password_hasher.dart';

class BcryptPasswordHasher implements PasswordHasher {
  @override
  String hash(String password) {
    return BCrypt.hashpw(password, BCrypt.gensalt());
  }

  @override
  bool verify(String password, String hashedPassword) {
    return BCrypt.checkpw(password, hashedPassword);
  }
}
