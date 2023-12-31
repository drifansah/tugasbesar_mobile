import 'package:flutter/material.dart';
import 'package:tugas_besar/shared/theme.dart';
import 'package:tugas_besar/ui/widgets/destination_card.dart';
import 'package:tugas_besar/ui/widgets/destinatios_tile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo,\nDede",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    "assets/ichsan.png",
                  ))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tangerang",
                imageUrl: "assets/image_destination1.png",
                rating: 4.8,
              ),
              DestinationCard(
                name: "White Houses",
                city: "Spain",
                imageUrl: "assets/image_destination2.png",
                rating: 4.7,
              ),
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Monaco",
                imageUrl: "assets/image_destination3.png",
                rating: 4.8,
              ),
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Japan",
                imageUrl: "assets/image_destination4.png",
                rating: 5.0,
              ),
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Singapore",
                imageUrl: "assets/image_destination5.png",
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
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: "Danau Beratan",
              city: "Singaraja",
              imageUrl: "assets/image_destination6.png",
              rating: 4.5,
            ),
            DestinationTile(
              name: "Danau Beratan",
              city: "Singaraja",
              imageUrl: "assets/image_destination6.png",
              rating: 4.5,
            ),
            DestinationTile(
              name: "Danau Beratan",
              city: "Singaraja",
              imageUrl: "assets/image_destination6.png",
              rating: 4.5,
            ),
            DestinationTile(
              name: "Sydney Opera",
              city: "AUstralia",
              imageUrl: "assets/image_destination7.png",
              rating: 4.7,
            ),
            DestinationTile(
              name: "Roma",
              city: "Italy",
              imageUrl: "assets/image_destination8.png",
              rating: 4.8,
            ),
            DestinationTile(
              name: "Payung Teduh",
              city: "Singapore",
              imageUrl: "assets/image_destination9.png",
              rating: 4.5,
            ),
            DestinationTile(
              name: "Hill Hey",
              city: "Monaco",
              imageUrl: "assets/image_destination10.png",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
