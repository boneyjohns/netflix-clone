import 'package:flutter/cupertino.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/search/widget/search_idel.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/kmLsepbFIa80wPcKxGpy3CLaXSo.jpg";

class SearchResultwidget extends StatelessWidget {
  const SearchResultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchText(name: "Movies & Tv"),
        kheight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            shrinkWrap: true,
            children: List.generate(
              20,
              (index) {
                return const Maincard();
              },
            ),
          ),
        )
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
