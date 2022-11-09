import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raflix/models/disneymovies_model.dart';
import 'package:raflix/theme.dart';

class DisneyMoviesCard extends StatelessWidget {
  final DisneyMoviesModel disneymovies;
  const DisneyMoviesCard(this.disneymovies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget movieBanner() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/search');
        },
        child: Container(
          height: 127,
          width: 100,
          margin: const EdgeInsets.only(
            right: 20,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                disneymovies.imageUrl,
              ),
            ),
          ),
        ),
      );
    }

    Widget movieInfo() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            disneymovies.name,
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            disneymovies.genre,
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: disneymovies.rating,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 18,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, index) =>
                    Image.asset('assets/icon_star.png'),
              ),
            ],
          )
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        movieBanner(),
        movieInfo(),
      ],
    );
  }
}
