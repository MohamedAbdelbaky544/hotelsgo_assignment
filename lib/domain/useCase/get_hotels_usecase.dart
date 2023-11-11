import 'package:dartz/dartz.dart';
import 'package:hotelsgo_assignment/core/error/failure.dart';
import 'package:hotelsgo_assignment/domain/entity/hotel.dart';
import 'package:hotelsgo_assignment/domain/repository/base_get_hotels.dart';

class GetHotelsUsecase {
  GetHotelsUsecase({required this.baseRepositoryGetHotels});
  final BaseRepositoryGetHotels baseRepositoryGetHotels;

  Future<Either<Failure, List<Hotel>>> call() async {
    return await baseRepositoryGetHotels.getHotels();
  }
}
