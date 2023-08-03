import 'package:core/core.dart';
import 'package:data/providers/remote/firebase_provider.dart';
import 'package:data/repositories/dish_repository_impl.dart';
import 'package:domain/domain.dart';

class DataDI {
  void initDependencies() {
    initProviders();
    initRepositories();
    initUseCases();
  }

  void initRepositories() {
    appLocator.registerSingleton<DishRepository>(
      DishRepositoryImpl(
        firebaseProvider: appLocator<FirebaseProvider>(),
      ),
    );
  }

  void initUseCases() {}

  void initProviders() {
    appLocator.registerSingleton<FirebaseProvider>(
      FirebaseProvider(),
    );
  }
}
