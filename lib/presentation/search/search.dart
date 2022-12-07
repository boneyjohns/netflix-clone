import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/search/widget/resultpage.dart';
import 'package:netflix/presentation/search/widget/search_idel.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.withOpacity(0.4),
            ),
            kheight,
            // const Expanded(
            //   child: SearchIdelWidget(),
            // )
            const Expanded(
              child: SearchResultwidget(),
            )
          ],
        ),
      )),
    );
  }
}
