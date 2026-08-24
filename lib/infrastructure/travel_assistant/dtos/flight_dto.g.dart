// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlightDto _$FlightDtoFromJson(Map<String, dynamic> json) => _FlightDto(
  id: json['id'] as String,
  airline: json['airline'] as String,
  origin: json['origin'] as String,
  destination: json['destination'] as String,
  departureTime: json['departureTime'] as String,
  arrivalTime: json['arrivalTime'] as String,
  price: (json['price'] as num).toDouble(),
  layovers: (json['layovers'] as num).toInt(),
);

Map<String, dynamic> _$FlightDtoToJson(_FlightDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'airline': instance.airline,
      'origin': instance.origin,
      'destination': instance.destination,
      'departureTime': instance.departureTime,
      'arrivalTime': instance.arrivalTime,
      'price': instance.price,
      'layovers': instance.layovers,
    };
