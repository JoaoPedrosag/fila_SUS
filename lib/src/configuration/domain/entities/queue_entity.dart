import 'package:fila_antendimento/src/configuration/domain/value_objects/order.dart';

class QueueEntity {
  final String id;
  final String title;
  final String abbr;
  final int priority;
  final List<Order> orders;

  QueueEntity({
    required this.id,
    required this.title,
    required this.abbr,
    required this.priority,
    required this.orders,
  });
}
