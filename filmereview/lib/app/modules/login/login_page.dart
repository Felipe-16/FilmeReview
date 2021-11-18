import 'package:filmereview/app/modules/login/login_controller.dart';
import 'package:filmereview/shared/components/app_bar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController(text: controller.email);
    var senhaController = TextEditingController(text: controller.senha);
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'Login',
          icon: Icons.login_outlined,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'PocPloc Movies',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome de usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: senhaController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    null;
                  },
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.red[600]),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Modular.to.pushNamed('/login/home');
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.red[700]),
                      child: Text('Login'),
                    )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Não tem conta?'),
                    TextButton(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20, color: Colors.red[600]),
                      ),
                      onPressed: () {
                        Modular.to.pushNamed('/login/cadastro');
                      },
                    )
                  ],
                ))
              ],
            )));
  }
}
