import 'package:freezed_annotation/freezed_annotation.dart';

part 'fedman_user_model.freezed.dart';
part 'fedman_user_model.g.dart';

@freezed
abstract class FedmanUserModel with _$FedmanUserModel {
  const factory FedmanUserModel({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? userId,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) String? dateOfBirth,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? mobilePhone,
    @JsonKey(includeIfNull: false) AddressModel? address,
    @JsonKey(includeIfNull: false) bool? sendSmsVerification,
    @JsonKey(includeIfNull: false) List<int>? federationIds,
    @JsonKey(includeIfNull: false) String? profilePhotoUrl,
  }) = _FedmanUserModel;

  factory FedmanUserModel.fromJson(Map<String, dynamic> json) =>
      _$FedmanUserModelFromJson(json);
}

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeIfNull: false) String? postalCode,
    @JsonKey(includeIfNull: false) String? city,
    @JsonKey(includeIfNull: false) String? country,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
