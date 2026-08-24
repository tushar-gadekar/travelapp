import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelapp/domain/travel_assistant/entities/flight.dart';

part 'flight_dto.freezed.dart';
part 'flight_dto.g.dart';

@freezed
abstract class FlightDto with _$FlightDto {
  const FlightDto._();

  const factory FlightDto({
    required String id,
    required String airline,
    required String origin,
    required String destination,
    required String departureTime,
    required String arrivalTime,
    required double price,
    required int layovers,
  }) = _FlightDto;

  factory FlightDto.fromJson(Map<String, dynamic> json) => _$FlightDtoFromJson(json);

  factory FlightDto.fromDomain(Flight domain) => FlightDto(
        id: domain.id,
        airline: domain.airline,
        origin: domain.origin,
        destination: domain.destination,
        departureTime: domain.departureTime.toIso8601String(),
        arrivalTime: domain.arrivalTime.toIso8601String(),
        price: domain.price,
        layovers: domain.layovers,
      );

  Flight toDomain() => Flight(
        id: id,
        airline: airline,
        origin: origin,
        destination: destination,
        departureTime: DateTime.parse(departureTime),
        arrivalTime: DateTime.parse(arrivalTime),
        price: price,
        layovers: layovers,
      );
}
