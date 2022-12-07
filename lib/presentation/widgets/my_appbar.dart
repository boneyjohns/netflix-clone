import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/contants.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        name,
        style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
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
    ]);
  }
}
