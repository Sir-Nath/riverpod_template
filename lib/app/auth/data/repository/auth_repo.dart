import 'package:dartz/dartz.dart';
import '../../error/auth_failure.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Unit>> signin();
}
