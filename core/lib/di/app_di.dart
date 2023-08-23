import 'package:get_it/get_it.dart';

final GetIt appLocator = GetIt.instance;

final AppDI appDI = AppDI();

class AppDI {
  void initDependencies() {
    // appLocator.registerSingleton<>();
  }
}

//homescreen ->(event)-> home_bloc -> getalldishesusecase -> dish_repository -> firebase_provider -> firebase
//<-         state
