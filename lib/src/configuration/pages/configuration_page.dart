import 'package:fila_antendimento/src/configuration/blocs/conf_bloc.dart';
import 'package:fila_antendimento/src/configuration/events/conf_event.dart';
import 'package:fila_antendimento/src/configuration/states/conf_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<ConfigurationBloc>().add(FetchQueues());
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ConfigurationBloc>();
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
              if (state is LoadedConfigurationState)
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
/// parei 25:00
