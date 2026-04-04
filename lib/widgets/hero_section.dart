import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileHeroSction(),
      desktop: desktopHeroSction(),
    );
  }
}

Widget mobileHeroSction() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
    child: Column(
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(illustration1),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Track your \nExpenses to \nSave Money',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Helps you to organize your income and expenses',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),
        SizedBox(height: 30),
        Container(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.primary),
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
            label: Text('Try a Demo'),
          ),
        ),
        SizedBox(height: 10),
        Text(
          '— Web, iOs and Android',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),
      ],
    ),
  );
}

Widget desktopHeroSction() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
  );
}
