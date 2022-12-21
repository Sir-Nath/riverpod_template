abstract class AuthFailure {
  final String message;
  factory AuthFailure.emailAlreadyInUse() => EmailAlreadyInUse('Email In Use');
  factory AuthFailure.serverError() => ServerError('Server Error');

  AuthFailure(this.message);
}

class EmailAlreadyInUse implements AuthFailure {
  @override
  final String message;
  EmailAlreadyInUse(this.message);
}

class ServerError implements AuthFailure {
  @override
  final String message;
  ServerError(this.message);
}

//!sample
// Future<Either<AuthFailure, String>> call(bool status) async {
//   try {
//     if (status) {
//       return right('Weldone');
//     }
//     return left(AuthFailure.serverError());
//   } catch (e) {
//     return left(AuthFailure.emailAlreadyInUse());
//   }
// }

// another() async {
//   final ans = await call(true);
//   ans.fold((failure) {
//     return failure.message;
//   }, (r) => r);
// }
