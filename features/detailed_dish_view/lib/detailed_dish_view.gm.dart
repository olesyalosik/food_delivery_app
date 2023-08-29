// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:detailed_dish_view/src/ui/detailed_dish_view_screen.dart'
    as _i1;
import 'package:domain/domain.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

abstract class $DetailedDishViewModule extends _i2.AutoRouterModule {
  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    DetailedDishViewRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedDishViewRouteArgs>();
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailedDishViewScreen(
          dishModel: args.dishModel,
          key: args.key,
        ),
      );
    }
  };
}

/// generated route for
/// [_i1.DetailedDishViewScreen]
class DetailedDishViewRoute
    extends _i2.PageRouteInfo<DetailedDishViewRouteArgs> {
  DetailedDishViewRoute({
    required _i3.DishModel dishModel,
    _i4.Key? key,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          DetailedDishViewRoute.name,
          args: DetailedDishViewRouteArgs(
            dishModel: dishModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedDishViewRoute';

  static const _i2.PageInfo<DetailedDishViewRouteArgs> page =
      _i2.PageInfo<DetailedDishViewRouteArgs>(name);
}

class DetailedDishViewRouteArgs {
  const DetailedDishViewRouteArgs({
    required this.dishModel,
    this.key,
  });

  final _i3.DishModel dishModel;

  final _i4.Key? key;

  @override
  String toString() {
    return 'DetailedDishViewRouteArgs{dishModel: $dishModel, key: $key}';
  }
}
