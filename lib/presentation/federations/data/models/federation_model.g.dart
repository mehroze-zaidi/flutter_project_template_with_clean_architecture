// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FederationModel _$FederationModelFromJson(Map<String, dynamic> json) =>
    _FederationModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      location: json['location'] as String,
      createdDate: json['createdDate'] as String,
      avatar: json['avatar'] as String,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$FederationModelToJson(_FederationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'location': instance.location,
      'createdDate': instance.createdDate,
      'avatar': instance.avatar,
      'isActive': instance.isActive,
    };
