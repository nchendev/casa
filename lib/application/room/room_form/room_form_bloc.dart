import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'room_form_event.dart';
part 'room_form_state.dart';

class RoomFormBloc extends Bloc<RoomFormEvent, RoomFormState> {
  RoomFormBloc() : super(RoomFormInitial());

  @override
  Stream<RoomFormState> mapEventToState(
    RoomFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
