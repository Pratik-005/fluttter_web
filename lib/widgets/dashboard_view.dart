import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileDashboardView(),
      desktop: DesktopDashboardView(),
    );
  }

  //=========== MOBILE ===========
  Widget MobileDashboardView() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dashboard),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget DesktopDashboardView() {
  return Container(
    height: 900,
    width: double.infinity,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: -20,
                right: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(vector1),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(vector2),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget companyLogo(String image) {
  return Container(
    width: 160,
    height: 36,
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
    ),
  );
}
