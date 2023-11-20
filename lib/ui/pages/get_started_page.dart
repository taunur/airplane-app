import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_get-started.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style: whiteTextstyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Explore new world with us and let\nyourself get an amazing experiences",
                  style: whiteTextstyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    color: kWhiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: "Get Started",
                  width: 220,
                  margin: const EdgeInsets.symmetric(vertical: 50),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
