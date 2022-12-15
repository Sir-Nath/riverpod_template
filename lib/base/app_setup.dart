import 'package:flutter/widgets.dart';

class AppSetup{
  ///[init] is for initializing what whould be before app start
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}