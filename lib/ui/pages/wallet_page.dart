import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Center(
            child: Container(
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
                            state.user.name,
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
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
