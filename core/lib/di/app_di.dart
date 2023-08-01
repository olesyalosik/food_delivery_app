import 'package:get_it/get_it.dart';

final GetIt appLocator = GetIt.instance;

final AppDI appDI = AppDI();

class AppDI {
  void initDependencies() {
    // appLocator.registerSingleton<>();
  }
}

//ui -> bloc -> usecases -> repositories -> provider -> api
