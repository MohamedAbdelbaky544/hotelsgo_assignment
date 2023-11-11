import 'package:dartz/dartz.dart';
import 'package:hotelsgo_assignment/core/error/failure.dart';

import 'package:hotelsgo_assignment/domain/entity/hotel.dart';

abstract class BaseRepositoryGetHotels {
  Future<Either<Failure, List<Hotel>>> getHotels();
}
