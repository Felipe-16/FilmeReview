import 'package:flutter/material.dart';

class FilmeEspecificoCard extends StatelessWidget {
  final String titulo;
  final String? sinopse;
  final String? direcao;
  final String imagem;

  const FilmeEspecificoCard({
    Key? key,
    required this.titulo,
    required this.sinopse,
    required this.imagem,
    required this.direcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              '$titulo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imagem), fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  '$direcao',
                ),
              ),
            ),
            Container(
              height: 40,
              width: 10,
              child: Column(
                children: [
                  Text('Sinopse:'),
                  Text('$sinopse'),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
