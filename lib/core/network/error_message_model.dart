import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  const ErrorMessageModel({required this.message, required this.success});

  final String message;
  final bool success;

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        message: json['message'], success: json['success']);
  }

  @override
  List<Object?> get props => [message, success];
}
