import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:catalogue/catalogue.dart';
import 'package:detailed_dish_view/detailed_dish_view.dart';
import 'package:home/home.dart';
import 'package:main_page/main_page.dart';
import 'package:order_history/order_history.dart';
import 'package:settings/settings.dart';
import 'package:shopping_cart/shopping_cart.dart';
import 'package:favorite/favorite.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: [
    DetailedDishViewModule,
    CatalogueModule,
    HomeModule,
    SettingsModule,
    ShoppingCartModule,
    OrderHistoryModule,
    MainPageModule,
    FavoriteModule,
  ],
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: MainPageRoute.page,
      path: '/',
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          page: HomeRoute.page,
          path: 'home',
        ),
        AutoRoute(
          page: FavoriteRoute.page,
          path: 'favorite',
        ),
        AutoRoute(
          page: OrderHistoryRoute.page,
          path: 'order_history',
        ),
        AutoRoute(
          page: ShoppingCartRoute.page,
          path: 'shopping_cart',
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: 'settings',
        ),
      ],
    ),
    AutoRoute(
      page: DetailedDishViewRoute.page,
      path: '/detaileddishview',
    ),
    AutoRoute(
      page: CatalogueRoute.page,
      path: '/catalogue',
    ),

    /// routes go here
  ];
}
