import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widget/numbercard.dart';
import 'package:netflix/presentation/home/widget/numberwidgetcard.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MainTitleCard(title: 'Released in the past year'),
              MainTitleCard(title: 'Trending Now'),
              Numberwidgetcard(),
              MainTitleCard(title: 'Tense Dramas'),
              MainTitleCard(title: 'south Indian Cenema'),
            ],
          ),
        ),
      ),
    );
  }
}
