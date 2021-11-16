import 'package:mobx/mobx.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  // _HomeControllerBase({required this.repository}) {
  //   getFilmes();
  // }

  // @observable
  // List<HomeModel> listaFilmes = List.empty();

  // @action
  // Future<void> getFilmes() async {
  //   listaFilmes = await repository.getFilmes();
  // }
}
