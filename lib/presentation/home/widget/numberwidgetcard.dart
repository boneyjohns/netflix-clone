import 'package:flutter/cupertino.dart';
import 'package:netflix/presentation/home/widget/numbercard.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class Numberwidgetcard extends StatelessWidget {
  const Numberwidgetcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(name: 'Top 10TV Shows In India Today'),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Numbercard(index: index),
            ),
          ),
        ),
      ],
    );
  }
}
