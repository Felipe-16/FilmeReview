import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  // final AuthController authController;

  // _LoginController(this.authController);

  @observable
  String erros = '';

  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    senha = value;
  }

  // @action
  // Future<void> login() async {
  //   try {
  //     await authController.loginWithEmail(email, password, isChecked);
  //     if (authController.isLogged) {
  //       Modular.to.navigate('/home');
  //     }
  //   } on Failure catch (e) {
  //     erros = e.message;
  //   }
  // }

}
