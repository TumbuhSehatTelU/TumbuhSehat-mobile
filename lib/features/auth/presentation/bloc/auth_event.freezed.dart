// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthStatusChecked value)?  authStatusChecked,TResult Function( FamilyExistenceChecked value)?  familyExistenceChecked,TResult Function( NewFamilySubmitted value)?  newFamilySubmitted,TResult Function( JoinFamilySubmitted value)?  joinFamilySubmitted,TResult Function( JoinOtpRequested value)?  joinOtpRequested,TResult Function( JoinOtpVerified value)?  joinOtpVerified,TResult Function( RegistrationStep1Completed value)?  registrationStep1Completed,TResult Function( MaternalStatusUpdated value)?  maternalStatusUpdated,TResult Function( RegistrationFinalized value)?  registrationFinalized,TResult Function( LogoutRequested value)?  logoutRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthStatusChecked() when authStatusChecked != null:
return authStatusChecked(_that);case FamilyExistenceChecked() when familyExistenceChecked != null:
return familyExistenceChecked(_that);case NewFamilySubmitted() when newFamilySubmitted != null:
return newFamilySubmitted(_that);case JoinFamilySubmitted() when joinFamilySubmitted != null:
return joinFamilySubmitted(_that);case JoinOtpRequested() when joinOtpRequested != null:
return joinOtpRequested(_that);case JoinOtpVerified() when joinOtpVerified != null:
return joinOtpVerified(_that);case RegistrationStep1Completed() when registrationStep1Completed != null:
return registrationStep1Completed(_that);case MaternalStatusUpdated() when maternalStatusUpdated != null:
return maternalStatusUpdated(_that);case RegistrationFinalized() when registrationFinalized != null:
return registrationFinalized(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthStatusChecked value)  authStatusChecked,required TResult Function( FamilyExistenceChecked value)  familyExistenceChecked,required TResult Function( NewFamilySubmitted value)  newFamilySubmitted,required TResult Function( JoinFamilySubmitted value)  joinFamilySubmitted,required TResult Function( JoinOtpRequested value)  joinOtpRequested,required TResult Function( JoinOtpVerified value)  joinOtpVerified,required TResult Function( RegistrationStep1Completed value)  registrationStep1Completed,required TResult Function( MaternalStatusUpdated value)  maternalStatusUpdated,required TResult Function( RegistrationFinalized value)  registrationFinalized,required TResult Function( LogoutRequested value)  logoutRequested,}){
final _that = this;
switch (_that) {
case AuthStatusChecked():
return authStatusChecked(_that);case FamilyExistenceChecked():
return familyExistenceChecked(_that);case NewFamilySubmitted():
return newFamilySubmitted(_that);case JoinFamilySubmitted():
return joinFamilySubmitted(_that);case JoinOtpRequested():
return joinOtpRequested(_that);case JoinOtpVerified():
return joinOtpVerified(_that);case RegistrationStep1Completed():
return registrationStep1Completed(_that);case MaternalStatusUpdated():
return maternalStatusUpdated(_that);case RegistrationFinalized():
return registrationFinalized(_that);case LogoutRequested():
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthStatusChecked value)?  authStatusChecked,TResult? Function( FamilyExistenceChecked value)?  familyExistenceChecked,TResult? Function( NewFamilySubmitted value)?  newFamilySubmitted,TResult? Function( JoinFamilySubmitted value)?  joinFamilySubmitted,TResult? Function( JoinOtpRequested value)?  joinOtpRequested,TResult? Function( JoinOtpVerified value)?  joinOtpVerified,TResult? Function( RegistrationStep1Completed value)?  registrationStep1Completed,TResult? Function( MaternalStatusUpdated value)?  maternalStatusUpdated,TResult? Function( RegistrationFinalized value)?  registrationFinalized,TResult? Function( LogoutRequested value)?  logoutRequested,}){
final _that = this;
switch (_that) {
case AuthStatusChecked() when authStatusChecked != null:
return authStatusChecked(_that);case FamilyExistenceChecked() when familyExistenceChecked != null:
return familyExistenceChecked(_that);case NewFamilySubmitted() when newFamilySubmitted != null:
return newFamilySubmitted(_that);case JoinFamilySubmitted() when joinFamilySubmitted != null:
return joinFamilySubmitted(_that);case JoinOtpRequested() when joinOtpRequested != null:
return joinOtpRequested(_that);case JoinOtpVerified() when joinOtpVerified != null:
return joinOtpVerified(_that);case RegistrationStep1Completed() when registrationStep1Completed != null:
return registrationStep1Completed(_that);case MaternalStatusUpdated() when maternalStatusUpdated != null:
return maternalStatusUpdated(_that);case RegistrationFinalized() when registrationFinalized != null:
return registrationFinalized(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  authStatusChecked,TResult Function( String phone)?  familyExistenceChecked,TResult Function( String phone,  String password,  Parent newParentData,  List<Child> childrenData)?  newFamilySubmitted,TResult Function( String familyPhone,  String password,  Parent newParentData)?  joinFamilySubmitted,TResult Function( String phone)?  joinOtpRequested,TResult Function( String phone,  String otp)?  joinOtpVerified,TResult Function( String name,  String? phone,  String password,  ParentRole role,  DateTime dateOfBirth)?  registrationStep1Completed,TResult Function( MaternalStatus maternalStatus)?  maternalStatusUpdated,TResult Function( String? familyPhone,  List<Child> children)?  registrationFinalized,TResult Function()?  logoutRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthStatusChecked() when authStatusChecked != null:
return authStatusChecked();case FamilyExistenceChecked() when familyExistenceChecked != null:
return familyExistenceChecked(_that.phone);case NewFamilySubmitted() when newFamilySubmitted != null:
return newFamilySubmitted(_that.phone,_that.password,_that.newParentData,_that.childrenData);case JoinFamilySubmitted() when joinFamilySubmitted != null:
return joinFamilySubmitted(_that.familyPhone,_that.password,_that.newParentData);case JoinOtpRequested() when joinOtpRequested != null:
return joinOtpRequested(_that.phone);case JoinOtpVerified() when joinOtpVerified != null:
return joinOtpVerified(_that.phone,_that.otp);case RegistrationStep1Completed() when registrationStep1Completed != null:
return registrationStep1Completed(_that.name,_that.phone,_that.password,_that.role,_that.dateOfBirth);case MaternalStatusUpdated() when maternalStatusUpdated != null:
return maternalStatusUpdated(_that.maternalStatus);case RegistrationFinalized() when registrationFinalized != null:
return registrationFinalized(_that.familyPhone,_that.children);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  authStatusChecked,required TResult Function( String phone)  familyExistenceChecked,required TResult Function( String phone,  String password,  Parent newParentData,  List<Child> childrenData)  newFamilySubmitted,required TResult Function( String familyPhone,  String password,  Parent newParentData)  joinFamilySubmitted,required TResult Function( String phone)  joinOtpRequested,required TResult Function( String phone,  String otp)  joinOtpVerified,required TResult Function( String name,  String? phone,  String password,  ParentRole role,  DateTime dateOfBirth)  registrationStep1Completed,required TResult Function( MaternalStatus maternalStatus)  maternalStatusUpdated,required TResult Function( String? familyPhone,  List<Child> children)  registrationFinalized,required TResult Function()  logoutRequested,}) {final _that = this;
switch (_that) {
case AuthStatusChecked():
return authStatusChecked();case FamilyExistenceChecked():
return familyExistenceChecked(_that.phone);case NewFamilySubmitted():
return newFamilySubmitted(_that.phone,_that.password,_that.newParentData,_that.childrenData);case JoinFamilySubmitted():
return joinFamilySubmitted(_that.familyPhone,_that.password,_that.newParentData);case JoinOtpRequested():
return joinOtpRequested(_that.phone);case JoinOtpVerified():
return joinOtpVerified(_that.phone,_that.otp);case RegistrationStep1Completed():
return registrationStep1Completed(_that.name,_that.phone,_that.password,_that.role,_that.dateOfBirth);case MaternalStatusUpdated():
return maternalStatusUpdated(_that.maternalStatus);case RegistrationFinalized():
return registrationFinalized(_that.familyPhone,_that.children);case LogoutRequested():
return logoutRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  authStatusChecked,TResult? Function( String phone)?  familyExistenceChecked,TResult? Function( String phone,  String password,  Parent newParentData,  List<Child> childrenData)?  newFamilySubmitted,TResult? Function( String familyPhone,  String password,  Parent newParentData)?  joinFamilySubmitted,TResult? Function( String phone)?  joinOtpRequested,TResult? Function( String phone,  String otp)?  joinOtpVerified,TResult? Function( String name,  String? phone,  String password,  ParentRole role,  DateTime dateOfBirth)?  registrationStep1Completed,TResult? Function( MaternalStatus maternalStatus)?  maternalStatusUpdated,TResult? Function( String? familyPhone,  List<Child> children)?  registrationFinalized,TResult? Function()?  logoutRequested,}) {final _that = this;
switch (_that) {
case AuthStatusChecked() when authStatusChecked != null:
return authStatusChecked();case FamilyExistenceChecked() when familyExistenceChecked != null:
return familyExistenceChecked(_that.phone);case NewFamilySubmitted() when newFamilySubmitted != null:
return newFamilySubmitted(_that.phone,_that.password,_that.newParentData,_that.childrenData);case JoinFamilySubmitted() when joinFamilySubmitted != null:
return joinFamilySubmitted(_that.familyPhone,_that.password,_that.newParentData);case JoinOtpRequested() when joinOtpRequested != null:
return joinOtpRequested(_that.phone);case JoinOtpVerified() when joinOtpVerified != null:
return joinOtpVerified(_that.phone,_that.otp);case RegistrationStep1Completed() when registrationStep1Completed != null:
return registrationStep1Completed(_that.name,_that.phone,_that.password,_that.role,_that.dateOfBirth);case MaternalStatusUpdated() when maternalStatusUpdated != null:
return maternalStatusUpdated(_that.maternalStatus);case RegistrationFinalized() when registrationFinalized != null:
return registrationFinalized(_that.familyPhone,_that.children);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case _:
  return null;

}
}

}

/// @nodoc


class AuthStatusChecked implements AuthEvent {
  const AuthStatusChecked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStatusChecked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authStatusChecked()';
}


}




/// @nodoc


class FamilyExistenceChecked implements AuthEvent {
  const FamilyExistenceChecked(this.phone);
  

 final  String phone;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyExistenceCheckedCopyWith<FamilyExistenceChecked> get copyWith => _$FamilyExistenceCheckedCopyWithImpl<FamilyExistenceChecked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyExistenceChecked&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AuthEvent.familyExistenceChecked(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $FamilyExistenceCheckedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $FamilyExistenceCheckedCopyWith(FamilyExistenceChecked value, $Res Function(FamilyExistenceChecked) _then) = _$FamilyExistenceCheckedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$FamilyExistenceCheckedCopyWithImpl<$Res>
    implements $FamilyExistenceCheckedCopyWith<$Res> {
  _$FamilyExistenceCheckedCopyWithImpl(this._self, this._then);

  final FamilyExistenceChecked _self;
  final $Res Function(FamilyExistenceChecked) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(FamilyExistenceChecked(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NewFamilySubmitted implements AuthEvent {
  const NewFamilySubmitted({required this.phone, required this.password, required this.newParentData, required final  List<Child> childrenData}): _childrenData = childrenData;
  

 final  String phone;
 final  String password;
 final  Parent newParentData;
 final  List<Child> _childrenData;
 List<Child> get childrenData {
  if (_childrenData is EqualUnmodifiableListView) return _childrenData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_childrenData);
}


/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewFamilySubmittedCopyWith<NewFamilySubmitted> get copyWith => _$NewFamilySubmittedCopyWithImpl<NewFamilySubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewFamilySubmitted&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.newParentData, newParentData) || other.newParentData == newParentData)&&const DeepCollectionEquality().equals(other._childrenData, _childrenData));
}


@override
int get hashCode => Object.hash(runtimeType,phone,password,newParentData,const DeepCollectionEquality().hash(_childrenData));

@override
String toString() {
  return 'AuthEvent.newFamilySubmitted(phone: $phone, password: $password, newParentData: $newParentData, childrenData: $childrenData)';
}


}

/// @nodoc
abstract mixin class $NewFamilySubmittedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $NewFamilySubmittedCopyWith(NewFamilySubmitted value, $Res Function(NewFamilySubmitted) _then) = _$NewFamilySubmittedCopyWithImpl;
@useResult
$Res call({
 String phone, String password, Parent newParentData, List<Child> childrenData
});


$ParentCopyWith<$Res> get newParentData;

}
/// @nodoc
class _$NewFamilySubmittedCopyWithImpl<$Res>
    implements $NewFamilySubmittedCopyWith<$Res> {
  _$NewFamilySubmittedCopyWithImpl(this._self, this._then);

  final NewFamilySubmitted _self;
  final $Res Function(NewFamilySubmitted) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? password = null,Object? newParentData = null,Object? childrenData = null,}) {
  return _then(NewFamilySubmitted(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,newParentData: null == newParentData ? _self.newParentData : newParentData // ignore: cast_nullable_to_non_nullable
as Parent,childrenData: null == childrenData ? _self._childrenData : childrenData // ignore: cast_nullable_to_non_nullable
as List<Child>,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentCopyWith<$Res> get newParentData {
  
  return $ParentCopyWith<$Res>(_self.newParentData, (value) {
    return _then(_self.copyWith(newParentData: value));
  });
}
}

/// @nodoc


class JoinFamilySubmitted implements AuthEvent {
  const JoinFamilySubmitted({required this.familyPhone, required this.password, required this.newParentData});
  

 final  String familyPhone;
 final  String password;
 final  Parent newParentData;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinFamilySubmittedCopyWith<JoinFamilySubmitted> get copyWith => _$JoinFamilySubmittedCopyWithImpl<JoinFamilySubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinFamilySubmitted&&(identical(other.familyPhone, familyPhone) || other.familyPhone == familyPhone)&&(identical(other.password, password) || other.password == password)&&(identical(other.newParentData, newParentData) || other.newParentData == newParentData));
}


@override
int get hashCode => Object.hash(runtimeType,familyPhone,password,newParentData);

@override
String toString() {
  return 'AuthEvent.joinFamilySubmitted(familyPhone: $familyPhone, password: $password, newParentData: $newParentData)';
}


}

/// @nodoc
abstract mixin class $JoinFamilySubmittedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $JoinFamilySubmittedCopyWith(JoinFamilySubmitted value, $Res Function(JoinFamilySubmitted) _then) = _$JoinFamilySubmittedCopyWithImpl;
@useResult
$Res call({
 String familyPhone, String password, Parent newParentData
});


$ParentCopyWith<$Res> get newParentData;

}
/// @nodoc
class _$JoinFamilySubmittedCopyWithImpl<$Res>
    implements $JoinFamilySubmittedCopyWith<$Res> {
  _$JoinFamilySubmittedCopyWithImpl(this._self, this._then);

  final JoinFamilySubmitted _self;
  final $Res Function(JoinFamilySubmitted) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? familyPhone = null,Object? password = null,Object? newParentData = null,}) {
  return _then(JoinFamilySubmitted(
familyPhone: null == familyPhone ? _self.familyPhone : familyPhone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,newParentData: null == newParentData ? _self.newParentData : newParentData // ignore: cast_nullable_to_non_nullable
as Parent,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentCopyWith<$Res> get newParentData {
  
  return $ParentCopyWith<$Res>(_self.newParentData, (value) {
    return _then(_self.copyWith(newParentData: value));
  });
}
}

/// @nodoc


class JoinOtpRequested implements AuthEvent {
  const JoinOtpRequested(this.phone);
  

 final  String phone;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinOtpRequestedCopyWith<JoinOtpRequested> get copyWith => _$JoinOtpRequestedCopyWithImpl<JoinOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinOtpRequested&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AuthEvent.joinOtpRequested(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $JoinOtpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $JoinOtpRequestedCopyWith(JoinOtpRequested value, $Res Function(JoinOtpRequested) _then) = _$JoinOtpRequestedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$JoinOtpRequestedCopyWithImpl<$Res>
    implements $JoinOtpRequestedCopyWith<$Res> {
  _$JoinOtpRequestedCopyWithImpl(this._self, this._then);

  final JoinOtpRequested _self;
  final $Res Function(JoinOtpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(JoinOtpRequested(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class JoinOtpVerified implements AuthEvent {
  const JoinOtpVerified({required this.phone, required this.otp});
  

 final  String phone;
 final  String otp;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinOtpVerifiedCopyWith<JoinOtpVerified> get copyWith => _$JoinOtpVerifiedCopyWithImpl<JoinOtpVerified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinOtpVerified&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,phone,otp);

@override
String toString() {
  return 'AuthEvent.joinOtpVerified(phone: $phone, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $JoinOtpVerifiedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $JoinOtpVerifiedCopyWith(JoinOtpVerified value, $Res Function(JoinOtpVerified) _then) = _$JoinOtpVerifiedCopyWithImpl;
@useResult
$Res call({
 String phone, String otp
});




}
/// @nodoc
class _$JoinOtpVerifiedCopyWithImpl<$Res>
    implements $JoinOtpVerifiedCopyWith<$Res> {
  _$JoinOtpVerifiedCopyWithImpl(this._self, this._then);

  final JoinOtpVerified _self;
  final $Res Function(JoinOtpVerified) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? otp = null,}) {
  return _then(JoinOtpVerified(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegistrationStep1Completed implements AuthEvent {
  const RegistrationStep1Completed({required this.name, this.phone, required this.password, required this.role, required this.dateOfBirth});
  

 final  String name;
 final  String? phone;
 final  String password;
 final  ParentRole role;
 final  DateTime dateOfBirth;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationStep1CompletedCopyWith<RegistrationStep1Completed> get copyWith => _$RegistrationStep1CompletedCopyWithImpl<RegistrationStep1Completed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationStep1Completed&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,password,role,dateOfBirth);

@override
String toString() {
  return 'AuthEvent.registrationStep1Completed(name: $name, phone: $phone, password: $password, role: $role, dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class $RegistrationStep1CompletedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegistrationStep1CompletedCopyWith(RegistrationStep1Completed value, $Res Function(RegistrationStep1Completed) _then) = _$RegistrationStep1CompletedCopyWithImpl;
@useResult
$Res call({
 String name, String? phone, String password, ParentRole role, DateTime dateOfBirth
});




}
/// @nodoc
class _$RegistrationStep1CompletedCopyWithImpl<$Res>
    implements $RegistrationStep1CompletedCopyWith<$Res> {
  _$RegistrationStep1CompletedCopyWithImpl(this._self, this._then);

  final RegistrationStep1Completed _self;
  final $Res Function(RegistrationStep1Completed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = freezed,Object? password = null,Object? role = null,Object? dateOfBirth = null,}) {
  return _then(RegistrationStep1Completed(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ParentRole,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class MaternalStatusUpdated implements AuthEvent {
  const MaternalStatusUpdated(this.maternalStatus);
  

 final  MaternalStatus maternalStatus;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaternalStatusUpdatedCopyWith<MaternalStatusUpdated> get copyWith => _$MaternalStatusUpdatedCopyWithImpl<MaternalStatusUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaternalStatusUpdated&&(identical(other.maternalStatus, maternalStatus) || other.maternalStatus == maternalStatus));
}


@override
int get hashCode => Object.hash(runtimeType,maternalStatus);

@override
String toString() {
  return 'AuthEvent.maternalStatusUpdated(maternalStatus: $maternalStatus)';
}


}

/// @nodoc
abstract mixin class $MaternalStatusUpdatedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $MaternalStatusUpdatedCopyWith(MaternalStatusUpdated value, $Res Function(MaternalStatusUpdated) _then) = _$MaternalStatusUpdatedCopyWithImpl;
@useResult
$Res call({
 MaternalStatus maternalStatus
});


$MaternalStatusCopyWith<$Res> get maternalStatus;

}
/// @nodoc
class _$MaternalStatusUpdatedCopyWithImpl<$Res>
    implements $MaternalStatusUpdatedCopyWith<$Res> {
  _$MaternalStatusUpdatedCopyWithImpl(this._self, this._then);

  final MaternalStatusUpdated _self;
  final $Res Function(MaternalStatusUpdated) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maternalStatus = null,}) {
  return _then(MaternalStatusUpdated(
null == maternalStatus ? _self.maternalStatus : maternalStatus // ignore: cast_nullable_to_non_nullable
as MaternalStatus,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaternalStatusCopyWith<$Res> get maternalStatus {
  
  return $MaternalStatusCopyWith<$Res>(_self.maternalStatus, (value) {
    return _then(_self.copyWith(maternalStatus: value));
  });
}
}

/// @nodoc


class RegistrationFinalized implements AuthEvent {
  const RegistrationFinalized({this.familyPhone, final  List<Child> children = const []}): _children = children;
  

 final  String? familyPhone;
// Diperlukan untuk alur join family
 final  List<Child> _children;
// Diperlukan untuk alur join family
@JsonKey() List<Child> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}


/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationFinalizedCopyWith<RegistrationFinalized> get copyWith => _$RegistrationFinalizedCopyWithImpl<RegistrationFinalized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationFinalized&&(identical(other.familyPhone, familyPhone) || other.familyPhone == familyPhone)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,familyPhone,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'AuthEvent.registrationFinalized(familyPhone: $familyPhone, children: $children)';
}


}

/// @nodoc
abstract mixin class $RegistrationFinalizedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegistrationFinalizedCopyWith(RegistrationFinalized value, $Res Function(RegistrationFinalized) _then) = _$RegistrationFinalizedCopyWithImpl;
@useResult
$Res call({
 String? familyPhone, List<Child> children
});




}
/// @nodoc
class _$RegistrationFinalizedCopyWithImpl<$Res>
    implements $RegistrationFinalizedCopyWith<$Res> {
  _$RegistrationFinalizedCopyWithImpl(this._self, this._then);

  final RegistrationFinalized _self;
  final $Res Function(RegistrationFinalized) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? familyPhone = freezed,Object? children = null,}) {
  return _then(RegistrationFinalized(
familyPhone: freezed == familyPhone ? _self.familyPhone : familyPhone // ignore: cast_nullable_to_non_nullable
as String?,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Child>,
  ));
}


}

/// @nodoc


class LogoutRequested implements AuthEvent {
  const LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutRequested()';
}


}




// dart format on
