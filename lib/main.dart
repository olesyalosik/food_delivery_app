import 'package:data/di/data_di.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:core/core.dart';
import 'package:foood_delivery_app/app/food_delivery_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  appDI.initDependencies();
  dataDI.initDependencies();
  await appLocator.allReady();
  runApp(
    const FoodDeliveryApp(),
  );
}
