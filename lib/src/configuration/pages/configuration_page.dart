import 'package:fila_antendimento/src/configuration/blocs/conf_bloc.dart';
import 'package:fila_antendimento/src/configuration/states/conf_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ConfBLoc>();
    final state = bloc.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Filas'),
                  Spacer(),
                  const Icon(Icons.add, color: Colors.red),
                ],
              ),
              if (state is LoadedConfState)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.queues.length,
                  itemBuilder: (context, index) {
                    final queue = state.queues[index];
                    return ListTile(
                      title: Text('${queue.title} - ${queue.abbr}'),
                      subtitle: Text('${queue.priority} de prioridade'),
                      trailing: const Icon(Icons.remove, color: Colors.red),
                    );
                  },
                ),
              const SizedBox(
                height: 10,
              ),
              const Text('Controle'),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Text('Reiniciar Filas'))
            ],
          ),
        ),
      ),
    );
  }
}
