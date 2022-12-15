import 'dart:developer';
import 'package:flutter/foundation.dart';

void debugLog<T>(T value,
    {required StackTrace stackTrace, required Object error}) {
  if (kDebugMode) {
    log("[DEBUG]==> $value");
  }
}
