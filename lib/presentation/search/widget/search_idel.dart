import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/53BC9F2tpZnsGno2cLhzvGprDYS.jpg';

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchText(name: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemTile(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: screenwidth * 0.35,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageurl),
              ),
            )),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
