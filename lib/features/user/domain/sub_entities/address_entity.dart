import 'geo_entity.dart';

class AddressEntity {
  final String street;
  final String suites;
  final String city;
  final String zipcode;
  final GeoEntity geo;

  AddressEntity({
    required this.street,
    required this.suites,
    required this.city,
    required this.zipcode,
    required this.geo,
  });
}
