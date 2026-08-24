// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlightDto {

 String get id; String get airline; String get origin; String get destination; String get departureTime; String get arrivalTime; double get price; int get layovers;
/// Create a copy of FlightDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlightDtoCopyWith<FlightDto> get copyWith => _$FlightDtoCopyWithImpl<FlightDto>(this as FlightDto, _$identity);

  /// Serializes this FlightDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlightDto&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.layovers, layovers) || other.layovers == layovers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,airline,origin,destination,departureTime,arrivalTime,price,layovers);

@override
String toString() {
  return 'FlightDto(id: $id, airline: $airline, origin: $origin, destination: $destination, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, layovers: $layovers)';
}


}

/// @nodoc
abstract mixin class $FlightDtoCopyWith<$Res>  {
  factory $FlightDtoCopyWith(FlightDto value, $Res Function(FlightDto) _then) = _$FlightDtoCopyWithImpl;
@useResult
$Res call({
 String id, String airline, String origin, String destination, String departureTime, String arrivalTime, double price, int layovers
});




}
/// @nodoc
class _$FlightDtoCopyWithImpl<$Res>
    implements $FlightDtoCopyWith<$Res> {
  _$FlightDtoCopyWithImpl(this._self, this._then);

  final FlightDto _self;
  final $Res Function(FlightDto) _then;

/// Create a copy of FlightDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? airline = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? arrivalTime = null,Object? price = null,Object? layovers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as String,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,layovers: null == layovers ? _self.layovers : layovers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FlightDto].
extension FlightDtoPatterns on FlightDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlightDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlightDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlightDto value)  $default,){
final _that = this;
switch (_that) {
case _FlightDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlightDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlightDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String airline,  String origin,  String destination,  String departureTime,  String arrivalTime,  double price,  int layovers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlightDto() when $default != null:
return $default(_that.id,_that.airline,_that.origin,_that.destination,_that.departureTime,_that.arrivalTime,_that.price,_that.layovers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String airline,  String origin,  String destination,  String departureTime,  String arrivalTime,  double price,  int layovers)  $default,) {final _that = this;
switch (_that) {
case _FlightDto():
return $default(_that.id,_that.airline,_that.origin,_that.destination,_that.departureTime,_that.arrivalTime,_that.price,_that.layovers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String airline,  String origin,  String destination,  String departureTime,  String arrivalTime,  double price,  int layovers)?  $default,) {final _that = this;
switch (_that) {
case _FlightDto() when $default != null:
return $default(_that.id,_that.airline,_that.origin,_that.destination,_that.departureTime,_that.arrivalTime,_that.price,_that.layovers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlightDto extends FlightDto {
  const _FlightDto({required this.id, required this.airline, required this.origin, required this.destination, required this.departureTime, required this.arrivalTime, required this.price, required this.layovers}): super._();
  factory _FlightDto.fromJson(Map<String, dynamic> json) => _$FlightDtoFromJson(json);

@override final  String id;
@override final  String airline;
@override final  String origin;
@override final  String destination;
@override final  String departureTime;
@override final  String arrivalTime;
@override final  double price;
@override final  int layovers;

/// Create a copy of FlightDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlightDtoCopyWith<_FlightDto> get copyWith => __$FlightDtoCopyWithImpl<_FlightDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlightDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlightDto&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.layovers, layovers) || other.layovers == layovers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,airline,origin,destination,departureTime,arrivalTime,price,layovers);

@override
String toString() {
  return 'FlightDto(id: $id, airline: $airline, origin: $origin, destination: $destination, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, layovers: $layovers)';
}


}

/// @nodoc
abstract mixin class _$FlightDtoCopyWith<$Res> implements $FlightDtoCopyWith<$Res> {
  factory _$FlightDtoCopyWith(_FlightDto value, $Res Function(_FlightDto) _then) = __$FlightDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String airline, String origin, String destination, String departureTime, String arrivalTime, double price, int layovers
});




}
/// @nodoc
class __$FlightDtoCopyWithImpl<$Res>
    implements _$FlightDtoCopyWith<$Res> {
  __$FlightDtoCopyWithImpl(this._self, this._then);

  final _FlightDto _self;
  final $Res Function(_FlightDto) _then;

/// Create a copy of FlightDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? airline = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? arrivalTime = null,Object? price = null,Object? layovers = null,}) {
  return _then(_FlightDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as String,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,layovers: null == layovers ? _self.layovers : layovers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
