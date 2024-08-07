import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/data/sub_models/geo_model.dart';
import 'package:clean_arch/features/user/domain/sub_entities/address_entity.dart';

class AddressModel extends AddressEntity {
  AddressModel({
    required super.street,
    required super.suites,
    required super.city,
    required super.zipcode,
    required super.geo,
  });
  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json[ApiKey.street],
      suites: json[ApiKey.suite],
      city: json[ApiKey.city],
      zipcode: json[ApiKey.zipcode],
      geo: GeoModel.fromJson(json[ApiKey.geo]),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.street: street,
      ApiKey.suite: suites,
      ApiKey.city: city,
      ApiKey.zipcode: zipcode,
      ApiKey.geo: geo,
    };
  }
}
