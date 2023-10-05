import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/share/cubit/app_cubit.dart';
import 'package:travel_app/share/cubit/app_cubit_logic.dart';
import 'package:travel_app/share/services/data_services.dart';

import 'share/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(data: DataServices()),
        child: const AppCubitLogic(),
      ),
    );
  }
}
