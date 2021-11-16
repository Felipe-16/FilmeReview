import 'package:filmereview/app/modules/cadastro/cadastro_controller.dart';
import 'package:filmereview/app/modules/cadastro/cadastro_page.dart';
import 'package:filmereview/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CadastroPage()),
    ModuleRoute('/home', module:HomeModule())
  ];
}