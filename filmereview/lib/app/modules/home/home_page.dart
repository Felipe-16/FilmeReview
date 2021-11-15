import 'package:filmereview/app/modules/home/home_controller.dart';
import 'package:filmereview/app/modules/home/widgets/painel_widget.dart';
import 'package:filmereview/shared/components/app_bar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'Home',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Filmes',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Observer(builder: (_) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.listaFilmes.length,
                      itemBuilder: (context, index) {
                        return PainelWidgetCard(
                          titulo: controller.listaFilmes[index].titulo,
                          imagem: controller.listaFilmes[index].imagem,
                          onTap: () {
                            Modular.to.pushNamed('/home/filme-especifico',
                                arguments: controller.listaFilmes[index]);
                          },
                        );
                      }),
                );
              }),
            ],
          ),
        ));
  }
}
