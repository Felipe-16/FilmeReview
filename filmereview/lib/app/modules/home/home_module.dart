import 'package:filmereview/app/modules/home/home_controller.dart';
import 'package:filmereview/app/modules/home/home_page.dart';
import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/page/filme-especifico/filme_especifico_page.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository.dart';
import 'package:filmereview/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(repository: i())),
    Bind.lazySingleton<HomeRepository>((i) => HomeRepository()),
  ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute('/filme-especifico',
        child: (_, args) => FilmeEspecificoPage(
              filme: args.data as HomeModel,
            )),
    ChildRoute('/login', child:(_, args) => LoginPage()),
  ];
}
