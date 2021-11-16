import 'package:filmereview/app/modules/cadastro/cadastro_module.dart';
import 'package:filmereview/app/modules/login/login_controller.dart';
import 'package:filmereview/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
    ModuleRoute('/cadastro', module: CadastroModule()),
  ];
}
