import 'package:filmereview/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/login',
      module: LoginModule(),
    ),
  ];
}
