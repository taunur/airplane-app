import 'package:airplane_app/cubit/page_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  const CustomBottomNavbarItem({
    super.key,
    required this.imgUrl,
    required this.index,
  });

  final String imgUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<PageCubit>().setPage(index);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Image.asset(
                imgUrl,
                width: 24,
                height: 24,
                color: context.read<PageCubit>().state == index
                    ? kPrimaryColor
                    : kGreyColor,
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: context.read<PageCubit>().state == index
                      ? kPrimaryColor
                      : kTransparentColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
