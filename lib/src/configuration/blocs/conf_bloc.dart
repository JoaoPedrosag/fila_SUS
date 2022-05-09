import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';
import 'package:fila_antendimento/src/configuration/events/conf_event.dart';
import 'package:fila_antendimento/src/configuration/states/conf_state.dart';

class ConfBLoc extends Bloc<ConfEvent, ConfState> {
  final IGetAllQueues getAllqueuesUseCase;
  late final StreamSubscription _sub;
  ConfBLoc(this.getAllqueuesUseCase) : super(EmptyConfState()) {
    _sub = getAllqueuesUseCase.call().listen((data) {
      add(AddQueues(data));
    });

    on<AddQueues>((event, emit) => emit(LoadedConfState(event.queues)));
  }

  @override
  Future<void> close() async {
    await _sub.cancel();
    super.close();
  }
}
