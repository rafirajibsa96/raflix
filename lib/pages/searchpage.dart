import 'package:flutter/material.dart';
import 'package:raflix/models/disneymovies_model.dart';
import 'package:raflix/theme.dart';
import 'package:raflix/widgets/disney_movies.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget disneyMovies() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 1,
                name: 'The Dark II',
                genre: 'Horror',
                imageUrl: 'assets/moviez6.png',
                rating: 4,
              ),
            ),
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 2,
                name: 'The Dark Knight',
                genre: 'Heroes',
                imageUrl: 'assets/moviez7.png',
                rating: 5,
              ),
            ),
            DisneyMoviesCard(
              DisneyMoviesModel(
                id: 3,
                name: 'The Dark Tower',
                genre: 'Action',
                imageUrl: 'assets/moviez8.png',
                rating: 4,
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.only(
              bottom: 70,
              right: 77,
              left: 78,
            ),
            decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.circular(37),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Suggest Movie',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
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
              //NOTE: Search Bar

              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: 39,
                  bottom: 35,
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        cursorColor: mPrimaryColor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: mWhiteColor,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              top: 11,
                              bottom: 12,
                              left: 22,
                              right: 16,
                            ),
                            child: Image.asset(
                              'assets/icon_search.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                          hintText: 'Enter Movie Title Here',
                          hintStyle: primaryTextStyle.copyWith(
                            fontSize: 16,
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 11,
                            bottom: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                            borderSide: BorderSide(
                              color: mWhiteColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                            borderSide: BorderSide(
                              color: mWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //NOTE: FROM DISNEY TITLE
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Search Result ',
                              style: primaryTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '(3)',
                              style: primaryTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        )
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
              bottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }
}
