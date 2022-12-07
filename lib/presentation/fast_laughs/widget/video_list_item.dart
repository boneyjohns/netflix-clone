import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/widget/resultpage.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kwhite,
                      size: 30,
                    ),
                  ),
                ),

                //rightside

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imageurl),
                      ),
                    ),
                    VideoActionWidget(
                        icon: Icons.emoji_emotions, titile: 'LOL'),
                    VideoActionWidget(icon: Icons.add, titile: 'My List'),
                    VideoActionWidget(icon: Icons.share, titile: 'Share'),
                    VideoActionWidget(icon: Icons.play_arrow, titile: 'Play')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String titile;
  const VideoActionWidget(
      {super.key, required this.icon, required this.titile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhite,
            size: 30,
          ),
          Text(
            titile,
            style: const TextStyle(color: kwhite, fontSize: 14),
          )
        ],
      ),
    );
  }
}
