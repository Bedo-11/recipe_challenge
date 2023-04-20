import '../../../../core/networking/connectivity.dart';
import '../../../../library.dart';
import '../models/recipe_model.dart';
import '../repositories/recipe_service.dart';

class RecipesProvider with ChangeNotifier {
  RequestStatus _requestStatus = RequestStatus.isLoading;
  List<RecipeModel>? _recipes;
  RequestStatus get requestStatus => _requestStatus;
  List<RecipeModel>? get recipes => _recipes;
  final NetworkInfo networkInfo;

  RecipesProvider({required this.networkInfo});
  Future<void> getRecipes() async {
    _requestStatus = RequestStatus.isLoading;
    if (await networkInfo.isConnected) {
      try {
        _recipes = await sl<RecipeRepository>().getRecipes();
        _requestStatus = RequestStatus.completed;
      } catch (e) {
        _requestStatus = RequestStatus.error;
      }
      notifyListeners();
    } else {
      _requestStatus = RequestStatus.noInternet;
    }
  }
}
