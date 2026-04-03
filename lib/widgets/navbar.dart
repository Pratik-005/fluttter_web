import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: mobileNavar(), desktop: desktopNavbar());
  }
}

Widget mobileNavar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget desktopNavbar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback'),
          ],
        ),
        Container(
          height: 45,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.primary),
                borderRadius: BorderRadius.circular(5), // change radius here
              ),
            ),
            onPressed: () {},
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain),
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
    ),
  );
}
