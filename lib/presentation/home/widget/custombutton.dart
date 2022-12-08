import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
