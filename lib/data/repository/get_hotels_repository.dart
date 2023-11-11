import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hotelsgo_assignment/core/error/failure.dart';
import 'package:hotelsgo_assignment/data/dataSource/remoteData/get_hotel.dart';
import 'package:hotelsgo_assignment/domain/entity/hotel.dart';
import 'package:hotelsgo_assignment/domain/repository/base_get_hotels.dart';

class GetHotelsRepository extends BaseRepositoryGetHotels {
  GetHotelsRepository({required this.baseRemoteDataSourceGetHotel});
  final BaseRemoteDataSourceGetHotel baseRemoteDataSourceGetHotel;

  @override
  Future<Either<Failure, List<Hotel>>> getHotels() async {
    try {
      final result = await baseRemoteDataSourceGetHotel.getHotels();
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(DatabaseFailure(e.toString()));
      }
    }
  }
}
