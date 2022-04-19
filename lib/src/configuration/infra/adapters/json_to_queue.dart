import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/infra/adapters/json_to_oder.dart';

class JsonToQueue {
  static QueueEntity fromMap(dynamic json) {
    return QueueEntity(
      id: json['id'],
      title: json['title'],
      abbr: json['abbr'],
      priority: json['priority'],
      orders: [
        if (json.containsKey('orders'))
          ...(json['orders'] as List).map(JsonToOrder.fromMap).toList(),
      ],
    );
  }
}
