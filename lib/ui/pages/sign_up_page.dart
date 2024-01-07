import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_input.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // title
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          "Join us and get\nyour next journey",
          style: blueTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    // button
    Widget submitButton() {
      return CustomButton(
        title: "Get Started",
        margin: const EdgeInsets.only(top: 16),
        onPressed: () {
          Navigator.popAndPushNamed(context, '/bonus');
        },
      );
    }

    // input Section
    Widget inputSection() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            const CustomTextFormField(
              title: "Full Name",
              hintText: "Your full name",
            ),
            const CustomTextFormField(
              title: "Email Address",
              hintText: "Your email address",
            ),
            const CustomTextFormField(
              title: "Password",
              hintText: "Your password",
              obscureText: true,
            ),
            const CustomTextFormField(
              title: "Hobby",
              hintText: "Your hobby",
            ),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20, bottom: 30),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
