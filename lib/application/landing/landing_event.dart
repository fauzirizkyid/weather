part of 'landing_bloc.dart';

@freezed
class LandingEvent with _$LandingEvent {
  const factory LandingEvent.started() = _Started;
}