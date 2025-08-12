// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Authenticated value)?  authenticated,TResult Function( _OtpVerificationRequired value)?  otpVerificationRequired,TResult Function( _Unauthenticated value)?  unauthenticated,TResult Function( _FamilyFound value)?  familyFound,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _OtpVerificationRequired() when otpVerificationRequired != null:
return otpVerificationRequired(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _FamilyFound() when familyFound != null:
return familyFound(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Authenticated value)  authenticated,required TResult Function( _OtpVerificationRequired value)  otpVerificationRequired,required TResult Function( _Unauthenticated value)  unauthenticated,required TResult Function( _FamilyFound value)  familyFound,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Authenticated():
return authenticated(_that);case _OtpVerificationRequired():
return otpVerificationRequired(_that);case _Unauthenticated():
return unauthenticated(_that);case _FamilyFound():
return familyFound(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Authenticated value)?  authenticated,TResult? Function( _OtpVerificationRequired value)?  otpVerificationRequired,TResult? Function( _Unauthenticated value)?  unauthenticated,TResult? Function( _FamilyFound value)?  familyFound,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _OtpVerificationRequired() when otpVerificationRequired != null:
return otpVerificationRequired(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _FamilyFound() when familyFound != null:
return familyFound(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Family family,  Parent activeParent)?  authenticated,TResult Function( String phone)?  otpVerificationRequired,TResult Function()?  unauthenticated,TResult Function( Family family)?  familyFound,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Authenticated() when authenticated != null:
return authenticated(_that.family,_that.activeParent);case _OtpVerificationRequired() when otpVerificationRequired != null:
return otpVerificationRequired(_that.phone);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _FamilyFound() when familyFound != null:
return familyFound(_that.family);case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Family family,  Parent activeParent)  authenticated,required TResult Function( String phone)  otpVerificationRequired,required TResult Function()  unauthenticated,required TResult Function( Family family)  familyFound,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Authenticated():
return authenticated(_that.family,_that.activeParent);case _OtpVerificationRequired():
return otpVerificationRequired(_that.phone);case _Unauthenticated():
return unauthenticated();case _FamilyFound():
return familyFound(_that.family);case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Family family,  Parent activeParent)?  authenticated,TResult? Function( String phone)?  otpVerificationRequired,TResult? Function()?  unauthenticated,TResult? Function( Family family)?  familyFound,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Authenticated() when authenticated != null:
return authenticated(_that.family,_that.activeParent);case _OtpVerificationRequired() when otpVerificationRequired != null:
return otpVerificationRequired(_that.phone);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _FamilyFound() when familyFound != null:
return familyFound(_that.family);case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Authenticated implements AuthState {
  const _Authenticated({required this.family, required this.activeParent});
  

 final  Family family;
 final  Parent activeParent;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedCopyWith<_Authenticated> get copyWith => __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated&&(identical(other.family, family) || other.family == family)&&(identical(other.activeParent, activeParent) || other.activeParent == activeParent));
}


@override
int get hashCode => Object.hash(runtimeType,family,activeParent);

@override
String toString() {
  return 'AuthState.authenticated(family: $family, activeParent: $activeParent)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(_Authenticated value, $Res Function(_Authenticated) _then) = __$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 Family family, Parent activeParent
});


$FamilyCopyWith<$Res> get family;$ParentCopyWith<$Res> get activeParent;

}
/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(this._self, this._then);

  final _Authenticated _self;
  final $Res Function(_Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? family = null,Object? activeParent = null,}) {
  return _then(_Authenticated(
family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as Family,activeParent: null == activeParent ? _self.activeParent : activeParent // ignore: cast_nullable_to_non_nullable
as Parent,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyCopyWith<$Res> get family {
  
  return $FamilyCopyWith<$Res>(_self.family, (value) {
    return _then(_self.copyWith(family: value));
  });
}/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentCopyWith<$Res> get activeParent {
  
  return $ParentCopyWith<$Res>(_self.activeParent, (value) {
    return _then(_self.copyWith(activeParent: value));
  });
}
}

/// @nodoc


class _OtpVerificationRequired implements AuthState {
  const _OtpVerificationRequired(this.phone);
  

 final  String phone;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpVerificationRequiredCopyWith<_OtpVerificationRequired> get copyWith => __$OtpVerificationRequiredCopyWithImpl<_OtpVerificationRequired>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpVerificationRequired&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AuthState.otpVerificationRequired(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$OtpVerificationRequiredCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$OtpVerificationRequiredCopyWith(_OtpVerificationRequired value, $Res Function(_OtpVerificationRequired) _then) = __$OtpVerificationRequiredCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$OtpVerificationRequiredCopyWithImpl<$Res>
    implements _$OtpVerificationRequiredCopyWith<$Res> {
  __$OtpVerificationRequiredCopyWithImpl(this._self, this._then);

  final _OtpVerificationRequired _self;
  final $Res Function(_OtpVerificationRequired) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_OtpVerificationRequired(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Unauthenticated implements AuthState {
  const _Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class _FamilyFound implements AuthState {
  const _FamilyFound(this.family);
  

 final  Family family;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyFoundCopyWith<_FamilyFound> get copyWith => __$FamilyFoundCopyWithImpl<_FamilyFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyFound&&(identical(other.family, family) || other.family == family));
}


@override
int get hashCode => Object.hash(runtimeType,family);

@override
String toString() {
  return 'AuthState.familyFound(family: $family)';
}


}

/// @nodoc
abstract mixin class _$FamilyFoundCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$FamilyFoundCopyWith(_FamilyFound value, $Res Function(_FamilyFound) _then) = __$FamilyFoundCopyWithImpl;
@useResult
$Res call({
 Family family
});


$FamilyCopyWith<$Res> get family;

}
/// @nodoc
class __$FamilyFoundCopyWithImpl<$Res>
    implements _$FamilyFoundCopyWith<$Res> {
  __$FamilyFoundCopyWithImpl(this._self, this._then);

  final _FamilyFound _self;
  final $Res Function(_FamilyFound) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? family = null,}) {
  return _then(_FamilyFound(
null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as Family,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyCopyWith<$Res> get family {
  
  return $FamilyCopyWith<$Res>(_self.family, (value) {
    return _then(_self.copyWith(family: value));
  });
}
}

/// @nodoc


class _Failure implements AuthState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
