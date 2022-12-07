import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/widgets/my_appbar.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final _widgetlist = [const _SmartDownload(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(name: 'Downloads')),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetlist[index],
          separatorBuilder: (context, index) => const SizedBox(
                height: 25,
              ),
          itemCount: _widgetlist.length),
    );
  }
}

class _SmartDownload extends StatelessWidget {
  const _SmartDownload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/n3G6dLQPDDdKvUKWMlCI7LRH9TQ.jpg',
    'https://www.themoviedb.org/t/p/original/16PtWFwAsUhW5ByOziqmx3HkJHk.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/kmLsepbFIa80wPcKxGpy3CLaXSo.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you ",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhite, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          textAlign: TextAlign.center,
          "we will download a personalised selection of\n movies and shows for you, so there's \n always something to watch on your \n divice",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.height * 0.46,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.5),
              radius: size.width * .40,
            ),
            Downloadimagewidget(
              imageList: imageList[0],
              margin: const EdgeInsets.only(
                left: 170,
              ),
              angle: 20 * pi / 180,
            ),
            Downloadimagewidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(
                  right: 170,
                ),
                angle: -20 * pi / 180),
            Downloadimagewidget(
              imageList: imageList[2],
              margin: const EdgeInsets.only(left: 0, top: 30),
            )
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kbuttoncolourBlue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Set up',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: kbuttoncolourwhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class Downloadimagewidget extends StatelessWidget {
  const Downloadimagewidget(
      {Key? key, required this.imageList, required this.margin, this.angle = 0})
      : super(key: key);
  final EdgeInsets margin;
  final String imageList;
  final double angle;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        height: size.height * 0.3,
        width: size.width * 0.36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            )),
      ),
    );
  }
}
