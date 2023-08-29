library catalogue;

export 'src/ui/catalogue_screen.dart';

import 'package:core/core.dart';

import 'catalogue.gm.dart';
export 'catalogue.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class CatalogueModule extends $CatalogueModule {}
