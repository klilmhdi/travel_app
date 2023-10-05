import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/share/cubit/app_cubit.dart';
import 'package:travel_app/share/cubit/app_cubit_states.dart';
import 'package:travel_app/pages/details_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

import '../../layout/layout.dart';

class AppCubitLogic extends StatelessWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) return const WelcomeScreen();
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedState) return const MainPage();
          if (state is DetailState) {
            return const DetailPage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
