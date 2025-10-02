// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'federation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FederationModel {

 String get id; String get name; String get type; String get location; String get createdDate; String get avatar; bool get isActive;
/// Create a copy of FederationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FederationModelCopyWith<FederationModel> get copyWith => _$FederationModelCopyWithImpl<FederationModel>(this as FederationModel, _$identity);

  /// Serializes this FederationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FederationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,location,createdDate,avatar,isActive);

@override
String toString() {
  return 'FederationModel(id: $id, name: $name, type: $type, location: $location, createdDate: $createdDate, avatar: $avatar, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $FederationModelCopyWith<$Res>  {
  factory $FederationModelCopyWith(FederationModel value, $Res Function(FederationModel) _then) = _$FederationModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String location, String createdDate, String avatar, bool isActive
});




}
/// @nodoc
class _$FederationModelCopyWithImpl<$Res>
    implements $FederationModelCopyWith<$Res> {
  _$FederationModelCopyWithImpl(this._self, this._then);

  final FederationModel _self;
  final $Res Function(FederationModel) _then;

/// Create a copy of FederationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? location = null,Object? createdDate = null,Object? avatar = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FederationModel].
extension FederationModelPatterns on FederationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FederationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FederationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FederationModel value)  $default,){
final _that = this;
switch (_that) {
case _FederationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FederationModel value)?  $default,){
final _that = this;
switch (_that) {
case _FederationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String location,  String createdDate,  String avatar,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FederationModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.location,_that.createdDate,_that.avatar,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String location,  String createdDate,  String avatar,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _FederationModel():
return $default(_that.id,_that.name,_that.type,_that.location,_that.createdDate,_that.avatar,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String location,  String createdDate,  String avatar,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _FederationModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.location,_that.createdDate,_that.avatar,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FederationModel implements FederationModel {
  const _FederationModel({required this.id, required this.name, required this.type, required this.location, required this.createdDate, required this.avatar, this.isActive = false});
  factory _FederationModel.fromJson(Map<String, dynamic> json) => _$FederationModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String location;
@override final  String createdDate;
@override final  String avatar;
@override@JsonKey() final  bool isActive;

/// Create a copy of FederationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FederationModelCopyWith<_FederationModel> get copyWith => __$FederationModelCopyWithImpl<_FederationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FederationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FederationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,location,createdDate,avatar,isActive);

@override
String toString() {
  return 'FederationModel(id: $id, name: $name, type: $type, location: $location, createdDate: $createdDate, avatar: $avatar, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$FederationModelCopyWith<$Res> implements $FederationModelCopyWith<$Res> {
  factory _$FederationModelCopyWith(_FederationModel value, $Res Function(_FederationModel) _then) = __$FederationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String location, String createdDate, String avatar, bool isActive
});




}
/// @nodoc
class __$FederationModelCopyWithImpl<$Res>
    implements _$FederationModelCopyWith<$Res> {
  __$FederationModelCopyWithImpl(this._self, this._then);

  final _FederationModel _self;
  final $Res Function(_FederationModel) _then;

/// Create a copy of FederationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? location = null,Object? createdDate = null,Object? avatar = null,Object? isActive = null,}) {
  return _then(_FederationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
