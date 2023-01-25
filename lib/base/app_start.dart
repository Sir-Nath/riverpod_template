import 'dart:async';
import 'package:flutter/material.dart';
import 'package:template_riverpod/app/auth/resolver/auth_resolver.dart';
import 'package:template_riverpod/base/app_setup.dart';
import '../core/interface/feature_resolver.dart';
import '../core/interface/router_module.dart';
import '../core/utils/logger.dart';
import 'my_app.dart';

class AppStart {
  final resolvers = <FeatureResolver>[
    AuthResolver(
      baseUrl: 'google.com',
    ),
  ];

  Future<void> startApp() async {
    final routerModule = <RouterModule>[];

    for (final resolver in resolvers) {
      routerModule.add(resolver.routerModule);
    }

    await AppSetup.init();
    await runZonedGuarded<Future<void>>(() async {
      runApp(
        MyApp(
          routerModule: routerModule,
        ),
      );
    }, (error, stack) {
      debugLog(
        'App Error on runZonedGuarded',
        error: error,
        stackTrace: stack,
      );
    });
  }
}
