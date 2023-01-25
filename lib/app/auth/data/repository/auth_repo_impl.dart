import 'package:template_riverpod/app/auth/error/auth_failure.dart';

import 'package:dartz/dartz.dart';

import 'auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository{
  @override
  Future<Either<AuthFailure, Unit>> signin() {
   
    throw UnimplementedError();
  }

}