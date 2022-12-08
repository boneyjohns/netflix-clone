import 'package:flutter/material.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/home/widget/custombutton.dart';
import 'package:netflix/presentation/new_and_hots/widgets/videowidget.dart';

class Everyonewatchingwidget extends StatelessWidget {
  const Everyonewatchingwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          'friends',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          'Leading the lead in the school music is a dream come true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspain.',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        kheight50,
        const Videowidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              icon: Icons.share,
              title: 'Share',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            CustomButton(
              icon: Icons.add,
              title: 'My List',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            CustomButton(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth
          ],
        )
      ],
    );
  }
}
