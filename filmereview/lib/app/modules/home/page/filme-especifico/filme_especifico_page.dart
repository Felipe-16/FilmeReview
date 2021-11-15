import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/page/filme-especifico/widget/filme_especifico_card.dart';
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
      body: SingleChildScrollView(
        child: FilmeEspecificoCard(
          titulo: widget.filme.titulo,
          sinopse: widget.filme.sinopse,
          imagem: widget.filme.imagem,
          direcao: widget.filme.direcao,
        ),
      ),
    );
  }
}
