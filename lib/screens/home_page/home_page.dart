import 'package:assignment/custom_widget/custom_appbar/home_appbar.dart';
import 'package:flutter/material.dart';

import '../../custom_widget/custom_page/home_page_design.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Constance().homeAppBar(),
        ),
      body: const HomePageDesign(),
    );
  }
}
