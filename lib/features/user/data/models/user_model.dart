import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/data/sub_models/address_model.dart';
import 'package:clean_arch/features/user/data/sub_models/company_model.dart';
import 'package:clean_arch/features/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final int id;
  final String username;
  final String website;
  final CompanyModel company;
  UserModel({
    required this.id,
    required this.username,
    required this.website,
    required this.company,
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json[ApiKey.id],
      username: json[ApiKey.username],
      website: json[ApiKey.website],
      company: CompanyModel.fromJson(json[ApiKey.company]),
      name: json[ApiKey.name],
      email: json[ApiKey.email],
      phone: json[ApiKey.phone],
      address: AddressModel.fromJson(json[ApiKey.address]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.username: username,
      ApiKey.website: website,
      ApiKey.company: company,
      ApiKey.name: name,
      ApiKey.email: email,
      ApiKey.phone: phone,
      ApiKey.address: address,
    };
  }
}
