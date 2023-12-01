import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/img_card.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: whiteTextstyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      "Kezia Anie",
                      style: whiteTextstyle.copyWith(
                        fontWeight: medium,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_plane.png',
                      width: 24,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "Pay",
                      style: whiteTextstyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style: whiteTextstyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  "IDR 280.000.000",
                  style: whiteTextstyle.copyWith(
                    fontWeight: medium,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Title
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              "Big Bonus 🎉",
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "We give you early credit so that\nyou can buy a flight ticket",
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    // start button
    Widget submitButton() {
      return CustomButton(
        title: "Start Fly Now",
        width: 220,
        margin: const EdgeInsets.only(top: 50),
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
