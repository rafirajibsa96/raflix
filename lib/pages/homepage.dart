import 'package:flutter/material.dart';
import 'package:raflix/models/disneymovies_model.dart';
import 'package:raflix/models/featuredmovies_model.dart';
import 'package:raflix/theme.dart';
import 'package:raflix/widgets/disney_movies.dart';
import 'package:raflix/widgets/featured_movies.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget featuredMovies() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FeaturedMoviesCard(
              FeaturedMoviesModel(
                id: 1,
                name: 'John Wick 4',
                genre: 'Action, Crime',
                imageUrl: 'assets/moviez1.png',
                rating: 5,
              ),
            ),
            FeaturedMoviesCard(
              FeaturedMoviesModel(
                id: 2,
                name: 'Bohemian',
                genre: 'Documentary',
                imageUrl: 'assets/moviez2.png',
                rating: 3,
              ),
            ),
            FeaturedMoviesCard(
              FeaturedMoviesModel(
                id: 1,
                name: 'Avenger',
                genre: 'Sci-fi, Action',
                imageUrl: 'assets/moviez3.png',
                rating: 4,
              ),
            ),
          ],
        ),
      );
    }

    Widget disneyMovies() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 1,
                name: 'Mulan Session',
                genre: 'History, War',
                imageUrl: 'assets/moviez4.png',
                rating: 3,
              ),
            ),
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 2,
                name: 'Beauty & The Beast',
                genre: 'Sci-Fiction',
                imageUrl: 'assets/moviez5.png',
                rating: 5,
              ),
            ),
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 3,
                name: 'The Dark Knight',
                genre: 'Heroes',
                imageUrl: 'assets/moviez7.png',
                rating: 5,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                mGradientTop,
                mGradientBottom,
              ],
            ),
          ),
          child: ListView(
            children: [
              //NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  top: 30,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Moviez',
                          style: primaryTextStyle.copyWith(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Watch much easier',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/search');
                      },
                      child: Container(
                        height: 45,
                        width: 55,
                        decoration: BoxDecoration(
                          color: mWhiteColor,
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(
                              100,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_search.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //NOTE: FEATURED MOVIES
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: featuredMovies(),
              ),
              //NOTE: FROM DISNEY TITLE
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  top: 30,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From Disney',
                          style: primaryTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //NOTE: DISNEY MOVIES
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: disneyMovies(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
