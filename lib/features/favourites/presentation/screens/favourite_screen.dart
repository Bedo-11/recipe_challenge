import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/constans.dart';
import '../../../../core/widgets/no_result_widget.dart';
import '../../data/providers/favourite_provider.dart';
import '../widgets/favourites_list_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final FavoritesProvider favoritesProvider =
        Provider.of<FavoritesProvider>(context, listen: true);
    return Scaffold(
      appBar: buildAppBar(),
      body: favoritesProvider.getFavoritesList.isNotEmpty
          ? SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FavouritesListWidget(favoritesProvider: favoritesProvider),
                  ],
                ),
              ),
            )
          : const NoResultWidget(
              title: 'No Favourites Recipes Yet!',
            ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "Your Favourite Recipes!",
        style: GoogleFonts.dynaPuff(
          textStyle: const TextStyle(color: Constants.primaryColor),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
