import 'package:catalogue/src/bloc/catalogue_bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CatalogueEvent {}

class InitEvent extends CatalogueEvent {}

class OnNavigateToDetailedDish extends CatalogueEvent {
  final DishModel dishModel;
  final BuildContext context;

  OnNavigateToDetailedDish({
    required this.context,
    required this.dishModel,
  });
}
