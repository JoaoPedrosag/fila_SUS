import 'package:bloc_test/bloc_test.dart';
import 'package:fila_antendimento/src/configuration/blocs/conf_bloc.dart';
import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/states/conf_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/mocks.dart';

void main() {
  blocTest(
    'conf bloc',
    build: () {
      final usecase = IGetAllQueusMock();

      when(() => usecase.call()).thenAnswer((_) => Stream.value([]));

      return ConfigurationBloc(usecase);
    },
    expect: () => [isA<LoadedConfigurationState>()],
  );
}
