import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/home/widget/custombutton.dart';
import 'package:netflix/presentation/new_and_hots/widgets/videowidget.dart';

class Commingsoonwidget extends StatelessWidget {
  const Commingsoonwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "FEB",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Videowidget(),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tall Girl 2',
                    style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButton(
                        icon: Icons.all_out_sharp,
                        title: 'Remind me',
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth,
                      CustomButton(
                        icon: Icons.info,
                        title: 'Remind me',
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth
                    ],
                  ),
                ],
              ),
              const Text('Coming on Friday'),
              kheight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              const Text(
                'Leading the lead in the school music is a dream come true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspain.',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
