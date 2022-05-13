import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';
import 'package:fila_antendimento/src/configuration/events/conf_event.dart';
import 'package:fila_antendimento/src/configuration/states/conf_state.dart';

class ConfigurationBloc extends Bloc<ConfEvent, ConfigurationState> {
  final IGetAllQueues getAllqueuesUseCase;

  ConfigurationBloc(this.getAllqueuesUseCase)
      : super(EmptyConfigurationState()) {
    on<FetchQueues>((event, emit) async {
      emit(LoadingConfigurationState());

      await emit.onEach<List<QueueEntity>>(
        getAllqueuesUseCase.call(),
        onData: (queues) {
          emit(LoadedConfigurationState(queues));
        },
      );
    }, transformer: restartable());
  }
}
