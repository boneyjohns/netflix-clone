import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';

class Numbercard extends StatelessWidget {
  const Numbercard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/rm2Ub3A0XCikcZB59R0UZY2NWhT.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: kwhite,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  color: kblack,
                  fontSize: 140,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: kblack),
            ),
          ),
        )
      ],
    );
  }
}
