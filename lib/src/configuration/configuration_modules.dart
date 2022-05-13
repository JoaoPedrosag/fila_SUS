import 'package:fila_antendimento/src/configuration/blocs/conf_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final configurationModule = [
  BlocProvider(
    create: (context) => ConfigurationBloc(
      context.read(),
    ),
  ),
];
