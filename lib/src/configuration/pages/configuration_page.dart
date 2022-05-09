import 'package:fila_antendimento/src/configuration/blocs/conf_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget body = Container();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: body,
    );
  }
}
