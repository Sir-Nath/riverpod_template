import 'package:template_riverpod/app/auth/routes/router_module.dart';
import 'package:template_riverpod/core/interface/feature_resolver.dart';
import 'package:template_riverpod/core/interface/router_module.dart';

class AuthResolver implements FeatureResolver {
  final String baseUrl;

  AuthResolver({
    required this.baseUrl,
  });
  @override
  RouterModule get routerModule => AuthRouterModule();
}
