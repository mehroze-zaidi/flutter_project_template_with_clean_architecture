// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fedman_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FedmanUserModel {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get firstName;@JsonKey(includeIfNull: false) String? get userId;@JsonKey(includeIfNull: false) String? get lastName;@JsonKey(includeIfNull: false) String? get dateOfBirth;@JsonKey(includeIfNull: false) String? get email;@JsonKey(includeIfNull: false) String? get mobilePhone;@JsonKey(includeIfNull: false) AddressModel? get address;@JsonKey(includeIfNull: false) bool? get sendSmsVerification;@JsonKey(includeIfNull: false) List<int>? get federationIds;@JsonKey(includeIfNull: false) String? get profilePhotoUrl;
/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FedmanUserModelCopyWith<FedmanUserModel> get copyWith => _$FedmanUserModelCopyWithImpl<FedmanUserModel>(this as FedmanUserModel, _$identity);

  /// Serializes this FedmanUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FedmanUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobilePhone, mobilePhone) || other.mobilePhone == mobilePhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.sendSmsVerification, sendSmsVerification) || other.sendSmsVerification == sendSmsVerification)&&const DeepCollectionEquality().equals(other.federationIds, federationIds)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,userId,lastName,dateOfBirth,email,mobilePhone,address,sendSmsVerification,const DeepCollectionEquality().hash(federationIds),profilePhotoUrl);

@override
String toString() {
  return 'FedmanUserModel(id: $id, firstName: $firstName, userId: $userId, lastName: $lastName, dateOfBirth: $dateOfBirth, email: $email, mobilePhone: $mobilePhone, address: $address, sendSmsVerification: $sendSmsVerification, federationIds: $federationIds, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class $FedmanUserModelCopyWith<$Res>  {
  factory $FedmanUserModelCopyWith(FedmanUserModel value, $Res Function(FedmanUserModel) _then) = _$FedmanUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? userId,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? dateOfBirth,@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? mobilePhone,@JsonKey(includeIfNull: false) AddressModel? address,@JsonKey(includeIfNull: false) bool? sendSmsVerification,@JsonKey(includeIfNull: false) List<int>? federationIds,@JsonKey(includeIfNull: false) String? profilePhotoUrl
});


$AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class _$FedmanUserModelCopyWithImpl<$Res>
    implements $FedmanUserModelCopyWith<$Res> {
  _$FedmanUserModelCopyWithImpl(this._self, this._then);

  final FedmanUserModel _self;
  final $Res Function(FedmanUserModel) _then;

/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? userId = freezed,Object? lastName = freezed,Object? dateOfBirth = freezed,Object? email = freezed,Object? mobilePhone = freezed,Object? address = freezed,Object? sendSmsVerification = freezed,Object? federationIds = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobilePhone: freezed == mobilePhone ? _self.mobilePhone : mobilePhone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,sendSmsVerification: freezed == sendSmsVerification ? _self.sendSmsVerification : sendSmsVerification // ignore: cast_nullable_to_non_nullable
as bool?,federationIds: freezed == federationIds ? _self.federationIds : federationIds // ignore: cast_nullable_to_non_nullable
as List<int>?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [FedmanUserModel].
extension FedmanUserModelPatterns on FedmanUserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FedmanUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FedmanUserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FedmanUserModel value)  $default,){
final _that = this;
switch (_that) {
case _FedmanUserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FedmanUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _FedmanUserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? userId, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? dateOfBirth, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? mobilePhone, @JsonKey(includeIfNull: false)  AddressModel? address, @JsonKey(includeIfNull: false)  bool? sendSmsVerification, @JsonKey(includeIfNull: false)  List<int>? federationIds, @JsonKey(includeIfNull: false)  String? profilePhotoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FedmanUserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.userId,_that.lastName,_that.dateOfBirth,_that.email,_that.mobilePhone,_that.address,_that.sendSmsVerification,_that.federationIds,_that.profilePhotoUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? userId, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? dateOfBirth, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? mobilePhone, @JsonKey(includeIfNull: false)  AddressModel? address, @JsonKey(includeIfNull: false)  bool? sendSmsVerification, @JsonKey(includeIfNull: false)  List<int>? federationIds, @JsonKey(includeIfNull: false)  String? profilePhotoUrl)  $default,) {final _that = this;
switch (_that) {
case _FedmanUserModel():
return $default(_that.id,_that.firstName,_that.userId,_that.lastName,_that.dateOfBirth,_that.email,_that.mobilePhone,_that.address,_that.sendSmsVerification,_that.federationIds,_that.profilePhotoUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? userId, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? dateOfBirth, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? mobilePhone, @JsonKey(includeIfNull: false)  AddressModel? address, @JsonKey(includeIfNull: false)  bool? sendSmsVerification, @JsonKey(includeIfNull: false)  List<int>? federationIds, @JsonKey(includeIfNull: false)  String? profilePhotoUrl)?  $default,) {final _that = this;
switch (_that) {
case _FedmanUserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.userId,_that.lastName,_that.dateOfBirth,_that.email,_that.mobilePhone,_that.address,_that.sendSmsVerification,_that.federationIds,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FedmanUserModel implements FedmanUserModel {
  const _FedmanUserModel({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.firstName, @JsonKey(includeIfNull: false) this.userId, @JsonKey(includeIfNull: false) this.lastName, @JsonKey(includeIfNull: false) this.dateOfBirth, @JsonKey(includeIfNull: false) this.email, @JsonKey(includeIfNull: false) this.mobilePhone, @JsonKey(includeIfNull: false) this.address, @JsonKey(includeIfNull: false) this.sendSmsVerification, @JsonKey(includeIfNull: false) final  List<int>? federationIds, @JsonKey(includeIfNull: false) this.profilePhotoUrl}): _federationIds = federationIds;
  factory _FedmanUserModel.fromJson(Map<String, dynamic> json) => _$FedmanUserModelFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? firstName;
@override@JsonKey(includeIfNull: false) final  String? userId;
@override@JsonKey(includeIfNull: false) final  String? lastName;
@override@JsonKey(includeIfNull: false) final  String? dateOfBirth;
@override@JsonKey(includeIfNull: false) final  String? email;
@override@JsonKey(includeIfNull: false) final  String? mobilePhone;
@override@JsonKey(includeIfNull: false) final  AddressModel? address;
@override@JsonKey(includeIfNull: false) final  bool? sendSmsVerification;
 final  List<int>? _federationIds;
@override@JsonKey(includeIfNull: false) List<int>? get federationIds {
  final value = _federationIds;
  if (value == null) return null;
  if (_federationIds is EqualUnmodifiableListView) return _federationIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(includeIfNull: false) final  String? profilePhotoUrl;

/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FedmanUserModelCopyWith<_FedmanUserModel> get copyWith => __$FedmanUserModelCopyWithImpl<_FedmanUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FedmanUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FedmanUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobilePhone, mobilePhone) || other.mobilePhone == mobilePhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.sendSmsVerification, sendSmsVerification) || other.sendSmsVerification == sendSmsVerification)&&const DeepCollectionEquality().equals(other._federationIds, _federationIds)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,userId,lastName,dateOfBirth,email,mobilePhone,address,sendSmsVerification,const DeepCollectionEquality().hash(_federationIds),profilePhotoUrl);

@override
String toString() {
  return 'FedmanUserModel(id: $id, firstName: $firstName, userId: $userId, lastName: $lastName, dateOfBirth: $dateOfBirth, email: $email, mobilePhone: $mobilePhone, address: $address, sendSmsVerification: $sendSmsVerification, federationIds: $federationIds, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$FedmanUserModelCopyWith<$Res> implements $FedmanUserModelCopyWith<$Res> {
  factory _$FedmanUserModelCopyWith(_FedmanUserModel value, $Res Function(_FedmanUserModel) _then) = __$FedmanUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? userId,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? dateOfBirth,@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? mobilePhone,@JsonKey(includeIfNull: false) AddressModel? address,@JsonKey(includeIfNull: false) bool? sendSmsVerification,@JsonKey(includeIfNull: false) List<int>? federationIds,@JsonKey(includeIfNull: false) String? profilePhotoUrl
});


@override $AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class __$FedmanUserModelCopyWithImpl<$Res>
    implements _$FedmanUserModelCopyWith<$Res> {
  __$FedmanUserModelCopyWithImpl(this._self, this._then);

  final _FedmanUserModel _self;
  final $Res Function(_FedmanUserModel) _then;

/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? userId = freezed,Object? lastName = freezed,Object? dateOfBirth = freezed,Object? email = freezed,Object? mobilePhone = freezed,Object? address = freezed,Object? sendSmsVerification = freezed,Object? federationIds = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_FedmanUserModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobilePhone: freezed == mobilePhone ? _self.mobilePhone : mobilePhone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,sendSmsVerification: freezed == sendSmsVerification ? _self.sendSmsVerification : sendSmsVerification // ignore: cast_nullable_to_non_nullable
as bool?,federationIds: freezed == federationIds ? _self._federationIds : federationIds // ignore: cast_nullable_to_non_nullable
as List<int>?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FedmanUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$AddressModel {

@JsonKey(includeIfNull: false) String? get street;@JsonKey(includeIfNull: false) String? get postalCode;@JsonKey(includeIfNull: false) String? get city;@JsonKey(includeIfNull: false) String? get country;
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressModelCopyWith<AddressModel> get copyWith => _$AddressModelCopyWithImpl<AddressModel>(this as AddressModel, _$identity);

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressModel&&(identical(other.street, street) || other.street == street)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,postalCode,city,country);

@override
String toString() {
  return 'AddressModel(street: $street, postalCode: $postalCode, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res>  {
  factory $AddressModelCopyWith(AddressModel value, $Res Function(AddressModel) _then) = _$AddressModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? street,@JsonKey(includeIfNull: false) String? postalCode,@JsonKey(includeIfNull: false) String? city,@JsonKey(includeIfNull: false) String? country
});




}
/// @nodoc
class _$AddressModelCopyWithImpl<$Res>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = freezed,Object? postalCode = freezed,Object? city = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressModel].
extension AddressModelPatterns on AddressModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressModel value)  $default,){
final _that = this;
switch (_that) {
case _AddressModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? street, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.street,_that.postalCode,_that.city,_that.country);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? street, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? country)  $default,) {final _that = this;
switch (_that) {
case _AddressModel():
return $default(_that.street,_that.postalCode,_that.city,_that.country);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? street, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? country)?  $default,) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.street,_that.postalCode,_that.city,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressModel implements AddressModel {
  const _AddressModel({@JsonKey(includeIfNull: false) this.street, @JsonKey(includeIfNull: false) this.postalCode, @JsonKey(includeIfNull: false) this.city, @JsonKey(includeIfNull: false) this.country});
  factory _AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

@override@JsonKey(includeIfNull: false) final  String? street;
@override@JsonKey(includeIfNull: false) final  String? postalCode;
@override@JsonKey(includeIfNull: false) final  String? city;
@override@JsonKey(includeIfNull: false) final  String? country;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressModelCopyWith<_AddressModel> get copyWith => __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressModel&&(identical(other.street, street) || other.street == street)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,postalCode,city,country);

@override
String toString() {
  return 'AddressModel(street: $street, postalCode: $postalCode, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res> implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(_AddressModel value, $Res Function(_AddressModel) _then) = __$AddressModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? street,@JsonKey(includeIfNull: false) String? postalCode,@JsonKey(includeIfNull: false) String? city,@JsonKey(includeIfNull: false) String? country
});




}
/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = freezed,Object? postalCode = freezed,Object? city = freezed,Object? country = freezed,}) {
  return _then(_AddressModel(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
