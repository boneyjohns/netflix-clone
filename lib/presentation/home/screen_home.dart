import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/home/widget/backgroundimagecard.dart';
import 'package:netflix/presentation/home/widget/numbercard.dart';
import 'package:netflix/presentation/home/widget/numberwidgetcard.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              } else if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              }
              return true;
            },
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      Backgroundimagecard(),
                      const MainTitleCard(title: 'Released in the past year'),
                      kheight,
                      MainTitleCard(title: 'Trending Now'),
                      kheight,
                      Numberwidgetcard(),
                      kheight,
                      MainTitleCard(title: 'Tense Dramas'),
                      kheight,
                      MainTitleCard(title: 'south Indian Cenema'),
                      kheight,
                    ],
                  ),
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(microseconds: 1000),
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.3),
                        height: 90,
                        child: Column(children: [
                          Row(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQcdK_C-9cQwnQ14YEbnusJiLUI6eu2ccQqw&usqp=CAU',
                                width: 70,
                                height: 70,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              kwidth,
                              Container(
                                color: Colors.blue,
                                height: 30,
                                width: 30,
                              ),
                              kwidth
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Tv Show",
                                style: khometitle,
                              ),
                              Text(
                                "Movies",
                                style: khometitle,
                              ),
                              Text(
                                "Categories",
                                style: khometitle,
                              )
                            ],
                          )
                        ]),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
