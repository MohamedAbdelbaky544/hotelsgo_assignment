import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo_assignment/domain/entity/hotel.dart';
import 'package:hotelsgo_assignment/domain/useCase/get_hotels_usecase.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this._getHotelsUsecase) : super(AppInitial());

  final GetHotelsUsecase _getHotelsUsecase;

  static AppCubit get(context) => BlocProvider.of(context);

  List<Hotel> hotels = [];
  Future<void> getHotels() async {
    emit(GetHotelsLoading());
    final result = await _getHotelsUsecase.call();
    result.fold((l) {
      emit(GetHotelsError(error: l.message));
    }, (r) {
      log(r.toString());
      hotels = r;
      emit(GetHotelsSuccess());
    });
  }
}
