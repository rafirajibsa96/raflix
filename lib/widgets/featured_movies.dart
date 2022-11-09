import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raflix/models/featuredmovies_model.dart';
import 'package:raflix/theme.dart';

class FeaturedMoviesCard extends StatelessWidget {
  final FeaturedMoviesModel featuredmovies;
  const FeaturedMoviesCard(this.featuredmovies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget movieBanner() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/search');
        },
        child: Container(
          height: 207,
          margin: EdgeInsets.only(
            right: defaultMargin,
            bottom: 19,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                featuredmovies.imageUrl,
              ),
            ),
          ),
        ),
      );
    }

    Widget movieInfo() {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featuredmovies.name,
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  featuredmovies.genre,
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            RatingBarIndicator(
              rating: featuredmovies.rating,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 18,
              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, index) =>
                  Image.asset('assets/icon_star.png'),
            )
          ],
        ),
      );
    }

    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          movieBanner(),
          movieInfo(),
        ],
      ),
    );
  }
}
