// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maternal_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MaternalStatus _$MaternalStatusFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'pregnant':
          return _Pregnant.fromJson(
            json
          );
                case 'lactating':
          return _Lactating.fromJson(
            json
          );
                case 'none':
          return _None.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'MaternalStatus',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$MaternalStatus {



  /// Serializes this MaternalStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaternalStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaternalStatus()';
}


}

/// @nodoc
class $MaternalStatusCopyWith<$Res>  {
$MaternalStatusCopyWith(MaternalStatus _, $Res Function(MaternalStatus) __);
}


/// Adds pattern-matching-related methods to [MaternalStatus].
extension MaternalStatusPatterns on MaternalStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Pregnant value)?  pregnant,TResult Function( _Lactating value)?  lactating,TResult Function( _None value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pregnant() when pregnant != null:
return pregnant(_that);case _Lactating() when lactating != null:
return lactating(_that);case _None() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Pregnant value)  pregnant,required TResult Function( _Lactating value)  lactating,required TResult Function( _None value)  none,}){
final _that = this;
switch (_that) {
case _Pregnant():
return pregnant(_that);case _Lactating():
return lactating(_that);case _None():
return none(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Pregnant value)?  pregnant,TResult? Function( _Lactating value)?  lactating,TResult? Function( _None value)?  none,}){
final _that = this;
switch (_that) {
case _Pregnant() when pregnant != null:
return pregnant(_that);case _Lactating() when lactating != null:
return lactating(_that);case _None() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GestationalAge age)?  pregnant,TResult Function( LactationPeriod period)?  lactating,TResult Function()?  none,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pregnant() when pregnant != null:
return pregnant(_that.age);case _Lactating() when lactating != null:
return lactating(_that.period);case _None() when none != null:
return none();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GestationalAge age)  pregnant,required TResult Function( LactationPeriod period)  lactating,required TResult Function()  none,}) {final _that = this;
switch (_that) {
case _Pregnant():
return pregnant(_that.age);case _Lactating():
return lactating(_that.period);case _None():
return none();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GestationalAge age)?  pregnant,TResult? Function( LactationPeriod period)?  lactating,TResult? Function()?  none,}) {final _that = this;
switch (_that) {
case _Pregnant() when pregnant != null:
return pregnant(_that.age);case _Lactating() when lactating != null:
return lactating(_that.period);case _None() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pregnant extends MaternalStatus {
  const _Pregnant({required this.age, final  String? $type}): $type = $type ?? 'pregnant',super._();
  factory _Pregnant.fromJson(Map<String, dynamic> json) => _$PregnantFromJson(json);

 final  GestationalAge age;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of MaternalStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PregnantCopyWith<_Pregnant> get copyWith => __$PregnantCopyWithImpl<_Pregnant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PregnantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pregnant&&(identical(other.age, age) || other.age == age));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age);

@override
String toString() {
  return 'MaternalStatus.pregnant(age: $age)';
}


}

/// @nodoc
abstract mixin class _$PregnantCopyWith<$Res> implements $MaternalStatusCopyWith<$Res> {
  factory _$PregnantCopyWith(_Pregnant value, $Res Function(_Pregnant) _then) = __$PregnantCopyWithImpl;
@useResult
$Res call({
 GestationalAge age
});




}
/// @nodoc
class __$PregnantCopyWithImpl<$Res>
    implements _$PregnantCopyWith<$Res> {
  __$PregnantCopyWithImpl(this._self, this._then);

  final _Pregnant _self;
  final $Res Function(_Pregnant) _then;

/// Create a copy of MaternalStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? age = null,}) {
  return _then(_Pregnant(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as GestationalAge,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _Lactating extends MaternalStatus {
  const _Lactating({required this.period, final  String? $type}): $type = $type ?? 'lactating',super._();
  factory _Lactating.fromJson(Map<String, dynamic> json) => _$LactatingFromJson(json);

 final  LactationPeriod period;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of MaternalStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LactatingCopyWith<_Lactating> get copyWith => __$LactatingCopyWithImpl<_Lactating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LactatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lactating&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period);

@override
String toString() {
  return 'MaternalStatus.lactating(period: $period)';
}


}

/// @nodoc
abstract mixin class _$LactatingCopyWith<$Res> implements $MaternalStatusCopyWith<$Res> {
  factory _$LactatingCopyWith(_Lactating value, $Res Function(_Lactating) _then) = __$LactatingCopyWithImpl;
@useResult
$Res call({
 LactationPeriod period
});




}
/// @nodoc
class __$LactatingCopyWithImpl<$Res>
    implements _$LactatingCopyWith<$Res> {
  __$LactatingCopyWithImpl(this._self, this._then);

  final _Lactating _self;
  final $Res Function(_Lactating) _then;

/// Create a copy of MaternalStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? period = null,}) {
  return _then(_Lactating(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as LactationPeriod,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _None extends MaternalStatus {
  const _None({final  String? $type}): $type = $type ?? 'none',super._();
  factory _None.fromJson(Map<String, dynamic> json) => _$NoneFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _None);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MaternalStatus.none()';
}


}




// dart format on
