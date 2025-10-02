import 'package:freezed_annotation/freezed_annotation.dart';

part 'federation_model.freezed.dart';
part 'federation_model.g.dart';

@freezed
abstract class FederationModel with _$FederationModel {
  const factory FederationModel({
    required String id,
    required String name,
    required String type,
    required String location,
    required String createdDate,
    required String avatar,
    @Default(false) bool isActive,
  }) = _FederationModel;

  factory FederationModel.fromJson(Map<String, dynamic> json) =>
      _$FederationModelFromJson(json);
}

enum FederationType {
  @JsonValue('International')
  international,
  @JsonValue('National')
  national,
  @JsonValue('Regional')
  regional,
}

extension FederationTypeExtension on FederationType {
  String get displayName {
    switch (this) {
      case FederationType.international:
        return 'International';
      case FederationType.national:
        return 'National';
      case FederationType.regional:
        return 'Regional';
    }
  }
}