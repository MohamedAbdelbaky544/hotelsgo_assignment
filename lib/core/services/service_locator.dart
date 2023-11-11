import 'package:get_it/get_it.dart';
import 'package:hotelsgo_assignment/data/dataSource/remoteData/get_hotel.dart';
import 'package:hotelsgo_assignment/data/repository/get_hotels_repository.dart';
import 'package:hotelsgo_assignment/domain/repository/base_get_hotels.dart';
import 'package:hotelsgo_assignment/domain/useCase/get_hotels_usecase.dart';

final sl = GetIt.instance;

class ServiceLocator {
  init() {
    //GetHotelsUsecase
    sl.registerLazySingleton(() => GetHotelsUsecase(
          baseRepositoryGetHotels: sl(),
        ));
// repository
    sl.registerLazySingleton<BaseRepositoryGetHotels>(
        () => GetHotelsRepository(baseRemoteDataSourceGetHotel: sl()));
// remoteData source
    sl.registerLazySingleton<BaseRemoteDataSourceGetHotel>(() => GetHotel());
  }
}
