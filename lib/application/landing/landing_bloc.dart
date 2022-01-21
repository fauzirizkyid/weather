import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_event.dart';
part 'landing_state.dart';
part 'landing_bloc.freezed.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(_Initial()) {
    on<LandingEvent>((event, emit) {
    });
  }
}
