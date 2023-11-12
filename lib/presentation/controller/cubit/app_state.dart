part of 'app_cubit.dart';

sealed class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

final class AppInitial extends AppState {}

final class GetHotelsSuccess extends AppState {}

final class GetHotelsError extends AppState {
  const GetHotelsError({required this.error});

  final String? error;
}

final class GetHotelsLoading extends AppState {}
