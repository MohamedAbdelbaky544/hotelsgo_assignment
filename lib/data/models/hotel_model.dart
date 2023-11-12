import 'package:hotelsgo_assignment/domain/entity/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.name,
      required super.starts,
      required super.price,
      required super.currency,
      required super.image,
      required super.reviewScore,
      required super.review,
      required super.address});

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        name: json['name'],
        starts: json['starts'],
        price: json['price'],
        currency: json['currency'],
        image: json['image'],
        reviewScore: json['review_score'].toDouble(),
        review: json['review'],
        address: json['address'],
      );
}
