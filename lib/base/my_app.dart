import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/interface/router_module.dart';

class MyApp extends StatelessWidget {
  final List<RouterModule> routerModule;
  const MyApp({
    super.key,
    required this.routerModule,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: generateRoute().routeInformationParser,
        routeInformationProvider: generateRoute().routeInformationProvider,
      ),
    );
  }

  GoRouter generateRoute() {
    late GoRouter route;
    late List<GoRoute> listOfRoute;
    for (var element in routerModule) {
      listOfRoute = element.getRoutes();
      route = GoRouter(routes: [...listOfRoute]);
    } 
    return route;
  }
}
