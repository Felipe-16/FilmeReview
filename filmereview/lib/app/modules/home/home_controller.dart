import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IHomeRepository repository;

  _HomeControllerBase({required this.repository}) {
    getFilmes();
  }

  @observable
  List<HomeModel> listaFilmes = List.empty();

  @action
  Future<void> getFilmes() async {
    listaFilmes = await repository.getFilmes();
  }
}
