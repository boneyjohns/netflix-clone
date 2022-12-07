import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/download/download.dart';
import 'package:netflix/presentation/fast_laughs/fast_laughs.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottomnav.dart';
import 'package:netflix/presentation/new_and_hots/new_and_hots.dart';
import 'package:netflix/presentation/search/search.dart';

class ScreenMainPAge extends StatelessWidget {
  ScreenMainPAge({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewandhots(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownload()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexchangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationWidget());
  }
}
