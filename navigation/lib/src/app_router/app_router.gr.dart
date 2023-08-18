// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ...DetailedDishViewModule().pagesMap,
    ...CatalogueModule().pagesMap,
    ...HomeModule().pagesMap,
    ...SettingsModule().pagesMap,
    ...ShoppingCartModule().pagesMap,
    ...OrderHistoryModule().pagesMap,
    ...MainPageModule().pagesMap,
    ...FavoriteModule().pagesMap,
  };
}
