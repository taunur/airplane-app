import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/destination_card.dart';
import 'package:airplane_app/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/img_profil.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    //popularDestination
    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tangerang",
                imgUrl: 'assets/img_destination-1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: "White Houses",
                city: "Spain",
                imgUrl: 'assets/img_destination-2.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: "Hill Heyo",
                city: "Monaco",
                imgUrl: 'assets/img_destination-3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: "Menara",
                city: "Japan",
                imgUrl: 'assets/img_destination-4.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: "Payung Teduh",
                city: "Singapore",
                imgUrl: 'assets/img_destination-5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            const DestinationTile(
              name: "Danau Beratan",
              city: 'Singajara',
              imgUrl: 'assets/img_destination-6.png',
              rating: 4.5,
            ),
            const DestinationTile(
              name: "Sydney Opera",
              city: 'Australia',
              imgUrl: 'assets/img_destination-7.png',
              rating: 4.7,
            ),
            const DestinationTile(
              name: "Roma",
              city: 'Italy',
              imgUrl: 'assets/img_destination-8.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestinations(),
      ],
    );
  }
}
