import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/family.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

class AuthResult {
  final Family family;
  final Parent activeParent;

  AuthResult({
    required this.family,
    required this.activeParent,
  });
}
