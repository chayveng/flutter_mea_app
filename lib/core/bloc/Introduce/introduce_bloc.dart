import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'introduce_event.dart';
part 'introduce_state.dart';

class IntroduceBloc extends Bloc<IntroduceEvent, IntroduceState> {
  IntroduceBloc() : super(IntroduceInitial()) {
    on<IntroduceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
