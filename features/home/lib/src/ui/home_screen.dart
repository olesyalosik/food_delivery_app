import 'package:home/src/bloc/home_bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

import 'home_form.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(
        getAllDishesUseCase: appLocator<GetAllDishesUseCase>(),
      ),
      child: const HomeForm(),
    );
  }
}
