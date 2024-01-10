import 'package:airplane_app/cubit/page_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/pages/setting_page.dart';
import 'package:airplane_app/ui/pages/transaction_page.dart';
import 'package:airplane_app/ui/pages/wallet_page.dart';
import 'package:airplane_app/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // content
    Widget builContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
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
                imgUrl: 'assets/ic_home.png',
                index: 0,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/ic_booking.png',
                index: 1,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/ic_card.png',
                index: 2,
              ),
              CustomBottomNavbarItem(
                imgUrl: 'assets/ic_setting.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBgColor,
          body: Stack(
            children: [
              builContent(currentIndex),
              customBottomNavbar(),
            ],
          ),
        );
      },
    );
  }
}
