// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_assistant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelAssistantEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelAssistantEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantEvent()';
}


}

/// @nodoc
class $TravelAssistantEventCopyWith<$Res>  {
$TravelAssistantEventCopyWith(TravelAssistantEvent _, $Res Function(TravelAssistantEvent) __);
}


/// Adds pattern-matching-related methods to [TravelAssistantEvent].
extension TravelAssistantEventPatterns on TravelAssistantEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitAssistant value)?  initAssistant,TResult Function( _StartListening value)?  startListening,TResult Function( _StopListening value)?  stopListening,TResult Function( _SendUserMessage value)?  sendUserMessage,TResult Function( _ConfirmBooking value)?  confirmBooking,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitAssistant() when initAssistant != null:
return initAssistant(_that);case _StartListening() when startListening != null:
return startListening(_that);case _StopListening() when stopListening != null:
return stopListening(_that);case _SendUserMessage() when sendUserMessage != null:
return sendUserMessage(_that);case _ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitAssistant value)  initAssistant,required TResult Function( _StartListening value)  startListening,required TResult Function( _StopListening value)  stopListening,required TResult Function( _SendUserMessage value)  sendUserMessage,required TResult Function( _ConfirmBooking value)  confirmBooking,}){
final _that = this;
switch (_that) {
case _InitAssistant():
return initAssistant(_that);case _StartListening():
return startListening(_that);case _StopListening():
return stopListening(_that);case _SendUserMessage():
return sendUserMessage(_that);case _ConfirmBooking():
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitAssistant value)?  initAssistant,TResult? Function( _StartListening value)?  startListening,TResult? Function( _StopListening value)?  stopListening,TResult? Function( _SendUserMessage value)?  sendUserMessage,TResult? Function( _ConfirmBooking value)?  confirmBooking,}){
final _that = this;
switch (_that) {
case _InitAssistant() when initAssistant != null:
return initAssistant(_that);case _StartListening() when startListening != null:
return startListening(_that);case _StopListening() when stopListening != null:
return stopListening(_that);case _SendUserMessage() when sendUserMessage != null:
return sendUserMessage(_that);case _ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initAssistant,TResult Function()?  startListening,TResult Function()?  stopListening,TResult Function( String text,  bool isAudio)?  sendUserMessage,TResult Function( Flight flight)?  confirmBooking,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitAssistant() when initAssistant != null:
return initAssistant();case _StartListening() when startListening != null:
return startListening();case _StopListening() when stopListening != null:
return stopListening();case _SendUserMessage() when sendUserMessage != null:
return sendUserMessage(_that.text,_that.isAudio);case _ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that.flight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initAssistant,required TResult Function()  startListening,required TResult Function()  stopListening,required TResult Function( String text,  bool isAudio)  sendUserMessage,required TResult Function( Flight flight)  confirmBooking,}) {final _that = this;
switch (_that) {
case _InitAssistant():
return initAssistant();case _StartListening():
return startListening();case _StopListening():
return stopListening();case _SendUserMessage():
return sendUserMessage(_that.text,_that.isAudio);case _ConfirmBooking():
return confirmBooking(_that.flight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initAssistant,TResult? Function()?  startListening,TResult? Function()?  stopListening,TResult? Function( String text,  bool isAudio)?  sendUserMessage,TResult? Function( Flight flight)?  confirmBooking,}) {final _that = this;
switch (_that) {
case _InitAssistant() when initAssistant != null:
return initAssistant();case _StartListening() when startListening != null:
return startListening();case _StopListening() when stopListening != null:
return stopListening();case _SendUserMessage() when sendUserMessage != null:
return sendUserMessage(_that.text,_that.isAudio);case _ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that.flight);case _:
  return null;

}
}

}

/// @nodoc


class _InitAssistant implements TravelAssistantEvent {
  const _InitAssistant();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitAssistant);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantEvent.initAssistant()';
}


}




/// @nodoc


class _StartListening implements TravelAssistantEvent {
  const _StartListening();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartListening);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantEvent.startListening()';
}


}




/// @nodoc


class _StopListening implements TravelAssistantEvent {
  const _StopListening();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopListening);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantEvent.stopListening()';
}


}




/// @nodoc


class _SendUserMessage implements TravelAssistantEvent {
  const _SendUserMessage(this.text, {required this.isAudio});
  

 final  String text;
 final  bool isAudio;

/// Create a copy of TravelAssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendUserMessageCopyWith<_SendUserMessage> get copyWith => __$SendUserMessageCopyWithImpl<_SendUserMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendUserMessage&&(identical(other.text, text) || other.text == text)&&(identical(other.isAudio, isAudio) || other.isAudio == isAudio));
}


@override
int get hashCode => Object.hash(runtimeType,text,isAudio);

@override
String toString() {
  return 'TravelAssistantEvent.sendUserMessage(text: $text, isAudio: $isAudio)';
}


}

/// @nodoc
abstract mixin class _$SendUserMessageCopyWith<$Res> implements $TravelAssistantEventCopyWith<$Res> {
  factory _$SendUserMessageCopyWith(_SendUserMessage value, $Res Function(_SendUserMessage) _then) = __$SendUserMessageCopyWithImpl;
@useResult
$Res call({
 String text, bool isAudio
});




}
/// @nodoc
class __$SendUserMessageCopyWithImpl<$Res>
    implements _$SendUserMessageCopyWith<$Res> {
  __$SendUserMessageCopyWithImpl(this._self, this._then);

  final _SendUserMessage _self;
  final $Res Function(_SendUserMessage) _then;

/// Create a copy of TravelAssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isAudio = null,}) {
  return _then(_SendUserMessage(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isAudio: null == isAudio ? _self.isAudio : isAudio // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ConfirmBooking implements TravelAssistantEvent {
  const _ConfirmBooking(this.flight);
  

 final  Flight flight;

/// Create a copy of TravelAssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmBookingCopyWith<_ConfirmBooking> get copyWith => __$ConfirmBookingCopyWithImpl<_ConfirmBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmBooking&&(identical(other.flight, flight) || other.flight == flight));
}


@override
int get hashCode => Object.hash(runtimeType,flight);

@override
String toString() {
  return 'TravelAssistantEvent.confirmBooking(flight: $flight)';
}


}

/// @nodoc
abstract mixin class _$ConfirmBookingCopyWith<$Res> implements $TravelAssistantEventCopyWith<$Res> {
  factory _$ConfirmBookingCopyWith(_ConfirmBooking value, $Res Function(_ConfirmBooking) _then) = __$ConfirmBookingCopyWithImpl;
@useResult
$Res call({
 Flight flight
});


$FlightCopyWith<$Res> get flight;

}
/// @nodoc
class __$ConfirmBookingCopyWithImpl<$Res>
    implements _$ConfirmBookingCopyWith<$Res> {
  __$ConfirmBookingCopyWithImpl(this._self, this._then);

  final _ConfirmBooking _self;
  final $Res Function(_ConfirmBooking) _then;

/// Create a copy of TravelAssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? flight = null,}) {
  return _then(_ConfirmBooking(
null == flight ? _self.flight : flight // ignore: cast_nullable_to_non_nullable
as Flight,
  ));
}

/// Create a copy of TravelAssistantEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlightCopyWith<$Res> get flight {
  
  return $FlightCopyWith<$Res>(_self.flight, (value) {
    return _then(_self.copyWith(flight: value));
  });
}
}

/// @nodoc
mixin _$TravelAssistantState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelAssistantState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantState()';
}


}

/// @nodoc
class $TravelAssistantStateCopyWith<$Res>  {
$TravelAssistantStateCopyWith(TravelAssistantState _, $Res Function(TravelAssistantState) __);
}


/// Adds pattern-matching-related methods to [TravelAssistantState].
extension TravelAssistantStatePatterns on TravelAssistantState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Ready value)?  ready,TResult Function( _BookingSuccess value)?  bookingSuccess,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Ready() when ready != null:
return ready(_that);case _BookingSuccess() when bookingSuccess != null:
return bookingSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Ready value)  ready,required TResult Function( _BookingSuccess value)  bookingSuccess,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Ready():
return ready(_that);case _BookingSuccess():
return bookingSuccess(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Ready value)?  ready,TResult? Function( _BookingSuccess value)?  bookingSuccess,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Ready() when ready != null:
return ready(_that);case _BookingSuccess() when bookingSuccess != null:
return bookingSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<ChatMessage> messages,  List<Flight> suggestedFlights,  bool isListening,  bool isLoadingAI)?  ready,TResult Function( String bookingReference)?  bookingSuccess,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Ready() when ready != null:
return ready(_that.messages,_that.suggestedFlights,_that.isListening,_that.isLoadingAI);case _BookingSuccess() when bookingSuccess != null:
return bookingSuccess(_that.bookingReference);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<ChatMessage> messages,  List<Flight> suggestedFlights,  bool isListening,  bool isLoadingAI)  ready,required TResult Function( String bookingReference)  bookingSuccess,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Ready():
return ready(_that.messages,_that.suggestedFlights,_that.isListening,_that.isLoadingAI);case _BookingSuccess():
return bookingSuccess(_that.bookingReference);case _Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<ChatMessage> messages,  List<Flight> suggestedFlights,  bool isListening,  bool isLoadingAI)?  ready,TResult? Function( String bookingReference)?  bookingSuccess,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Ready() when ready != null:
return ready(_that.messages,_that.suggestedFlights,_that.isListening,_that.isLoadingAI);case _BookingSuccess() when bookingSuccess != null:
return bookingSuccess(_that.bookingReference);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TravelAssistantState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TravelAssistantState.initial()';
}


}




/// @nodoc


class _Ready implements TravelAssistantState {
  const _Ready({required final  List<ChatMessage> messages, final  List<Flight> suggestedFlights = const [], this.isListening = false, this.isLoadingAI = false}): _messages = messages,_suggestedFlights = suggestedFlights;
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  List<Flight> _suggestedFlights;
@JsonKey() List<Flight> get suggestedFlights {
  if (_suggestedFlights is EqualUnmodifiableListView) return _suggestedFlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestedFlights);
}

@JsonKey() final  bool isListening;
@JsonKey() final  bool isLoadingAI;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&const DeepCollectionEquality().equals(other._messages, _messages)&&const DeepCollectionEquality().equals(other._suggestedFlights, _suggestedFlights)&&(identical(other.isListening, isListening) || other.isListening == isListening)&&(identical(other.isLoadingAI, isLoadingAI) || other.isLoadingAI == isLoadingAI));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),const DeepCollectionEquality().hash(_suggestedFlights),isListening,isLoadingAI);

@override
String toString() {
  return 'TravelAssistantState.ready(messages: $messages, suggestedFlights: $suggestedFlights, isListening: $isListening, isLoadingAI: $isLoadingAI)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $TravelAssistantStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, List<Flight> suggestedFlights, bool isListening, bool isLoadingAI
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? suggestedFlights = null,Object? isListening = null,Object? isLoadingAI = null,}) {
  return _then(_Ready(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,suggestedFlights: null == suggestedFlights ? _self._suggestedFlights : suggestedFlights // ignore: cast_nullable_to_non_nullable
as List<Flight>,isListening: null == isListening ? _self.isListening : isListening // ignore: cast_nullable_to_non_nullable
as bool,isLoadingAI: null == isLoadingAI ? _self.isLoadingAI : isLoadingAI // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _BookingSuccess implements TravelAssistantState {
  const _BookingSuccess(this.bookingReference);
  

 final  String bookingReference;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingSuccessCopyWith<_BookingSuccess> get copyWith => __$BookingSuccessCopyWithImpl<_BookingSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingSuccess&&(identical(other.bookingReference, bookingReference) || other.bookingReference == bookingReference));
}


@override
int get hashCode => Object.hash(runtimeType,bookingReference);

@override
String toString() {
  return 'TravelAssistantState.bookingSuccess(bookingReference: $bookingReference)';
}


}

/// @nodoc
abstract mixin class _$BookingSuccessCopyWith<$Res> implements $TravelAssistantStateCopyWith<$Res> {
  factory _$BookingSuccessCopyWith(_BookingSuccess value, $Res Function(_BookingSuccess) _then) = __$BookingSuccessCopyWithImpl;
@useResult
$Res call({
 String bookingReference
});




}
/// @nodoc
class __$BookingSuccessCopyWithImpl<$Res>
    implements _$BookingSuccessCopyWith<$Res> {
  __$BookingSuccessCopyWithImpl(this._self, this._then);

  final _BookingSuccess _self;
  final $Res Function(_BookingSuccess) _then;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookingReference = null,}) {
  return _then(_BookingSuccess(
null == bookingReference ? _self.bookingReference : bookingReference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements TravelAssistantState {
  const _Error(this.error);
  

 final  String error;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TravelAssistantState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $TravelAssistantStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of TravelAssistantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
