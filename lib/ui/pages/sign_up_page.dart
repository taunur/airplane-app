import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  final TextEditingController hobbyController = TextEditingController(text: "");

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
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/bonus",
              (route) => false,
            );
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kRedColor,
                content: Text(
                  state.error,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return CustomButton(
            title: "Get Started",
            margin: const EdgeInsets.only(top: 16),
            onPressed: () {
              context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text,
                  );
            },
          );
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
            CustomTextFormField(
              title: "Full Name",
              hintText: "Your full name",
              controller: nameController,
            ),
            CustomTextFormField(
              title: "Email Address",
              hintText: "Your email address",
              controller: emailController,
            ),
            CustomTextFormField(
              title: "Password",
              hintText: "Your password",
              obscureText: true,
              controller: passwordController,
            ),
            CustomTextFormField(
              title: "Hobby",
              hintText: "Your hobby",
              controller: hobbyController,
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
