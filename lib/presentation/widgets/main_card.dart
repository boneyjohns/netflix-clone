import 'package:flutter/material.dart';
import 'package:netflix/core/contants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
