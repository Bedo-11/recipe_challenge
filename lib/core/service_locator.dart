import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../features/recipes/data/repositories/recipe_service.dart';
import 'networking/connectivity.dart';
import 'networking/network_helper.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerLazySingleton(() => NetworkHelper());
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
    sl.registerLazySingleton<RecipeRepository>(() => RecipeRepository(
          networkInfo: sl(),
        ));
    sl.registerLazySingleton(() => InternetConnectionChecker());
  }
}
