import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight.freezed.dart';

@freezed
abstract class Flight with _$Flight {
  const Flight._();

  const factory Flight({
    required String id,
    required String airline,
    required String origin,
    required String destination,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required double price,
    required int layovers,
  }) = _Flight;

  factory Flight.empty() => Flight(
        id: '',
        airline: '',
        origin: '',
        destination: '',
        departureTime: DateTime.now(),
        arrivalTime: DateTime.now(),
        price: 0.0,
        layovers: 0,
      );
}
