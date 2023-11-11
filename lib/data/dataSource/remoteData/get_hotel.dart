import 'package:dio/dio.dart';
import 'package:hotelsgo_assignment/core/error/exceptions.dart';
import 'package:hotelsgo_assignment/core/network/api_constants.dart';
import 'package:hotelsgo_assignment/core/network/error_message_model.dart';
import 'package:hotelsgo_assignment/data/models/hotel_model.dart';

abstract class BaseRemoteDataSourceGetHotel {
  Future<List<HotelModel>> getHotels();
}

class GetHotel extends BaseRemoteDataSourceGetHotel {
  @override
  Future<List<HotelModel>> getHotels() async {
    final response = await Dio().get(ApiConstance.dummyData);
    if (response.statusCode == 200) {
      return List.from(response.data.map((e) => HotelModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
