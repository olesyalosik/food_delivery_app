import 'package:core/core.dart';
import 'package:data/providers/remote/firebase_provider.dart';
import 'package:data/repositories/dish_repository_impl.dart';
import 'package:domain/domain.dart';

final DataDI dataDI = DataDI();

class DataDI {
  void initDependencies() {
    initFirebase();
    initProviders();
    initRepositories();
    initUseCases();
  }

  void initFirebase() {
    appLocator.registerSingleton<FirebaseFirestore>(
      FirebaseFirestore.instance,
    );
  }

  void initRepositories() {
    appLocator.registerSingleton<DishRepository>(
      DishRepositoryImpl(
        firebaseProvider: appLocator<FirebaseProvider>(),
      ),
    );
  }

  void initUseCases() {
    appLocator.registerFactory<GetAllDishesUseCase>(
      () => GetAllDishesUseCase(
        dishRepository: appLocator<DishRepository>(),
      ),
    );
  }

  void initProviders() {
    appLocator.registerSingleton<FirebaseProvider>(
      FirebaseProvider(
        firebaseFirestore: appLocator<FirebaseFirestore>(),
      ),
    );
  }
}
