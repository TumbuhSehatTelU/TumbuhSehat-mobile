// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Child {

 String get id; String get name; String get gender; DateTime get dateOfBirth; double get height; double get weight;
/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildCopyWith<Child> get copyWith => _$ChildCopyWithImpl<Child>(this as Child, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Child&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,gender,dateOfBirth,height,weight);

@override
String toString() {
  return 'Child(id: $id, name: $name, gender: $gender, dateOfBirth: $dateOfBirth, height: $height, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ChildCopyWith<$Res>  {
  factory $ChildCopyWith(Child value, $Res Function(Child) _then) = _$ChildCopyWithImpl;
@useResult
$Res call({
 String id, String name, String gender, DateTime dateOfBirth, double height, double weight
});




}
/// @nodoc
class _$ChildCopyWithImpl<$Res>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._self, this._then);

  final Child _self;
  final $Res Function(Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? gender = null,Object? dateOfBirth = null,Object? height = null,Object? weight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Child].
extension ChildPatterns on Child {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Child value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Child value)  $default,){
final _that = this;
switch (_that) {
case _Child():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Child value)?  $default,){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String gender,  DateTime dateOfBirth,  double height,  double weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.dateOfBirth,_that.height,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String gender,  DateTime dateOfBirth,  double height,  double weight)  $default,) {final _that = this;
switch (_that) {
case _Child():
return $default(_that.id,_that.name,_that.gender,_that.dateOfBirth,_that.height,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String gender,  DateTime dateOfBirth,  double height,  double weight)?  $default,) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.id,_that.name,_that.gender,_that.dateOfBirth,_that.height,_that.weight);case _:
  return null;

}
}

}

/// @nodoc


class _Child implements Child {
  const _Child({required this.id, required this.name, required this.gender, required this.dateOfBirth, required this.height, required this.weight});
  

@override final  String id;
@override final  String name;
@override final  String gender;
@override final  DateTime dateOfBirth;
@override final  double height;
@override final  double weight;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildCopyWith<_Child> get copyWith => __$ChildCopyWithImpl<_Child>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Child&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,gender,dateOfBirth,height,weight);

@override
String toString() {
  return 'Child(id: $id, name: $name, gender: $gender, dateOfBirth: $dateOfBirth, height: $height, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$ChildCopyWith(_Child value, $Res Function(_Child) _then) = __$ChildCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String gender, DateTime dateOfBirth, double height, double weight
});




}
/// @nodoc
class __$ChildCopyWithImpl<$Res>
    implements _$ChildCopyWith<$Res> {
  __$ChildCopyWithImpl(this._self, this._then);

  final _Child _self;
  final $Res Function(_Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? gender = null,Object? dateOfBirth = null,Object? height = null,Object? weight = null,}) {
  return _then(_Child(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
