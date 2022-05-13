import 'package:fila_antendimento/src/configuration/configuration_modules.dart';
import 'package:fila_antendimento/src/configuration/infra/queue_module.dart';
import 'package:fila_antendimento/src/configuration/pages/configuration_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...queueModule,
        ...configurationModule,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        routes: {
          '/': (context) => ConfigurationPage(),
        },
      ),
    );
  }
}
