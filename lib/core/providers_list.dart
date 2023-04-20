import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import '../features/favourites/data/providers/favourite_provider.dart';
import '../features/recipes/data/providers/recipes_provider.dart';

final sl = GetIt.I;

class ProvidersList {
  ProvidersList._();
  static providersList() {
    return [
      ChangeNotifierProvider<RecipesProvider>(
        create: (context) => RecipesProvider(networkInfo: sl()),
      ),
      ChangeNotifierProvider<FavoritesProvider>(
        create: (context) => FavoritesProvider(),
      ),
    ];
  }
}
