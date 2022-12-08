import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';

import 'package:netflix/presentation/home/widget/custombutton.dart';

class Backgroundimagecard extends StatelessWidget {
  const Backgroundimagecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                kmainimage,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButton(icon: Icons.add, title: 'My List'),
                _playbutton(),
                const CustomButton(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }
}

TextButton _playbutton() {
  return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      icon: const Icon(Icons.play_arrow, size: 25, color: kblack),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(color: kblack, fontSize: 20),
        ),
      ));
}
