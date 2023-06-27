import 'package:flutter/material.dart';
import 'package:tugas_besar/shared/theme.dart';
import 'package:tugas_besar/ui/pages/home_page.dart';
import 'package:tugas_besar/ui/widgets/custom_botton_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildConten() {
      return Homepage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottonNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottonNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottonNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottonNavigationItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildConten(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
