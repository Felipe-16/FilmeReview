import 'package:flutter/material.dart';

class PainelWidgetCard extends StatelessWidget {
  final String titulo;
  final String? imagem;
  final void Function()? onTap;

  const PainelWidgetCard({
    Key? key,
    required this.titulo,
    this.imagem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$titulo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imagem!), fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
