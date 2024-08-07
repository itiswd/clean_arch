import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/domain/sub_entities/geo_entity.dart';

class GeoModel extends GeoEntity {
  GeoModel({
    required super.lat,
    required super.long,
  });
  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lat: json[ApiKey.lat],
      long: json[ApiKey.lng],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.lat: lat,
      ApiKey.lng: long,
    };
  }
}
