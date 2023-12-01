import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/widgets/custom_navbar_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // content
    Widget builContent() {
      return const HomePage();
    }

    // Navbar
    Widget customBottomNavbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavbarItem(
                assets: 'assets/ic_home.png',
                isSelected: true,
              ),
              CustomBottomNavbarItem(
                assets: 'assets/ic_booking.png',
              ),
              CustomBottomNavbarItem(
                assets: 'assets/ic_card.png',
              ),
              CustomBottomNavbarItem(
                assets: 'assets/ic_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          builContent(),
          customBottomNavbar(),
        ],
      ),
    );
  }
}
