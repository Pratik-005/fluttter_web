import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/dashboard_view.dart';
import 'package:flutter_web/widgets/hero_section.dart';
import 'package:flutter_web/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [Navbar(), HeroSection(), DashboardView()]),
      ),
    );
  }
}
