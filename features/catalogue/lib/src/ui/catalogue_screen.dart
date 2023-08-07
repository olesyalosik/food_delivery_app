import 'package:catalogue/src/bloc/catalogue_bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

import 'catalogue_form.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogueBloc>(
      create: (_) => CatalogueBloc(
        getAllDishesUseCase: appLocator<GetAllDishesUseCase>(),
      ),
      child: const CatalogueForm(),
    );
  }
}
