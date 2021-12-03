import 'package:filmereview/app/modules/home/page/filme-especifico/widget/rating_widget.dart';
import 'package:flutter/material.dart';

class FilmeEspecificoCard extends StatelessWidget {
  final String? direcao;
  final String? elenco;
  final String? roteiro;
  final String? sinopse;
  final String imagem;
  final double? nota;

  const FilmeEspecificoCard(
      {Key? key, this.direcao, this.sinopse, required this.imagem,this.nota, this.roteiro, this.elenco});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width *0.9,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width *0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image: NetworkImage(imagem),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 174),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Direção: $direcao',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    'Roteiro: $roteiro',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    'Elenco: $elenco',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Spacer(),
                  RatingWidget(nota: nota,),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Sinopse:', style: TextStyle(fontSize: 24, color: Colors.black)),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width *0.4,
                    child: Text(
                      '$sinopse',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
