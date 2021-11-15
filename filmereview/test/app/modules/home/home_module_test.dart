import 'package:filmereview/app/modules/home/home_controller.dart';
import 'package:filmereview/app/modules/home/home_module.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(HomeModule());

  test('[TEST] - Injeção do HomeController', () {
    Modular.get<HomeController>();
  });

  test('[TEST] - Injeção do HomeRepository', () {
    Modular.get<HomeRepository>();
  });
}