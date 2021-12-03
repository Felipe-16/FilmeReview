import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/page/filme-especifico/widget/filme_especifico_card_widget.dart';
import 'package:filmereview/shared/components/app_bar/appbar.dart';
import 'package:flutter/material.dart';

class FilmeEspecificoPage extends StatefulWidget {
  FilmeEspecificoPage({
    Key? key,
    required this.filme,
  }) : super(key: key);
  final HomeModel filme;

  @override
  _FilmeEspecificoPageState createState() => _FilmeEspecificoPageState();
}

class _FilmeEspecificoPageState extends State<FilmeEspecificoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titulo: 'Filmes',
        icon: Icons.local_movies_rounded,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                widget.filme.titulo,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          FilmeEspecificoCard(
            direcao: widget.filme.direcao,
            imagem: widget.filme.imagem,
            sinopse: widget.filme.sinopse,
            //nota: widget.filme.nota,
            elenco: widget.filme.elenco,
            roteiro: widget.filme.roteiro,
          ),
        ],
      ),
    );
  }
}
