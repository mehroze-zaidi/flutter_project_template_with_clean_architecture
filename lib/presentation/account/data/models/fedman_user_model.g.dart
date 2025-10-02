// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fedman_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FedmanUserModel _$FedmanUserModelFromJson(Map<String, dynamic> json) =>
    _FedmanUserModel(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      userId: json['userId'] as String?,
      lastName: json['lastName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      email: json['email'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      sendSmsVerification: json['sendSmsVerification'] as bool?,
      federationIds: (json['federationIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      profilePhotoUrl: json['profilePhotoUrl'] as String?,
    );

Map<String, dynamic> _$FedmanUserModelToJson(_FedmanUserModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'firstName': ?instance.firstName,
      'userId': ?instance.userId,
      'lastName': ?instance.lastName,
      'dateOfBirth': ?instance.dateOfBirth,
      'email': ?instance.email,
      'mobilePhone': ?instance.mobilePhone,
      'address': ?instance.address,
      'sendSmsVerification': ?instance.sendSmsVerification,
      'federationIds': ?instance.federationIds,
      'profilePhotoUrl': ?instance.profilePhotoUrl,
    };

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      street: json['street'] as String?,
      postalCode: json['postalCode'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'street': ?instance.street,
      'postalCode': ?instance.postalCode,
      'city': ?instance.city,
      'country': ?instance.country,
    };
