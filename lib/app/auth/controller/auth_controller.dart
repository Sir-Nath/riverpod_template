 import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_riverpod/app/auth/controller/auth_state.dart';

class AuthController extends StateNotifier{
  AuthController() : super(AuthState.initial());
  
 }
