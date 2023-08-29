// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:catalogue/src/ui/catalogue_screen.dart' as _i1;

abstract class $CatalogueModule extends _i2.AutoRouterModule {
  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    CatalogueRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CatalogueScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.CatalogueScreen]
class CatalogueRoute extends _i2.PageRouteInfo<void> {
  const CatalogueRoute({List<_i2.PageRouteInfo>? children})
      : super(
          CatalogueRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogueRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
