import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(String value) => email = value;

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isSenhaValid =>
      RegExp(r'^(?=.*[0-9])(?=\S+$).{8,40}$').hasMatch(senha);

  @observable
  bool loading = false;

  @action
  Future<void> LoginScreen() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }

  @observable
  bool loggedIn = false;
}
