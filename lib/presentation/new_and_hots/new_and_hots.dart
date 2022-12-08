import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants.dart';
import 'package:netflix/presentation/home/widget/custombutton.dart';
import 'package:netflix/presentation/new_and_hots/widgets/commingsoon.dart';

class ScreenNewandhots extends StatelessWidget {
  const ScreenNewandhots({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & New",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
            bottom: TabBar(
                labelColor: kblack,
                unselectedLabelColor: kwhite,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                isScrollable: true,
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kradius30),
                tabs: const [
                  Tab(text: '🍟Comming Soon'),
                  Tab(text: "👀Everyone's watching")
                ]),
          ),
        ),
        body: TabBarView(
            children: [_buildComingsoon(), _buildEveroneswatching()]),
      ),
    );
  }

  Widget _buildComingsoon() {
    return ListView.builder(
      itemBuilder: (context, index) => const Commingsoonwidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveroneswatching() {
    return const SizedBox();
  }
}
