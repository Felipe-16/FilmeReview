import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  final double? nota;

  const RatingWidget({Key? key, this.nota});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBarIndicator(
          rating: 3,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.red,
          ),
          itemCount: 5,
          itemSize: 50.0,
          direction: Axis.horizontal,
        ),
      ],
    );
  }
}
