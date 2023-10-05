import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/data_model.dart';

import '../services/data_services.dart';
import 'app_cubit_states.dart';

class AppCubit extends Cubit<CubitStates> {
  final DataServices data;
  late final places;

  AppCubit({required this.data}) : super(IntialState()) {
    emit(WelcomeState());
  }

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getPlaces();
      emit(LoadedState(places));
    } catch (e) {
      print("Error in App cubit: $e");
    }
  }

  detailState(DataModel data) => emit(DetailState(data));

  goBack() => emit(LoadedState(places));
}
