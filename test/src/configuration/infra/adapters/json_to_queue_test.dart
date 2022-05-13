import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/value_objects/order.dart';
import 'package:fila_antendimento/src/configuration/infra/adapters/json_to_queue.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('deve converter um map em objeto do tipo QueueEntity', () {
    final queue = JsonToQueue.fromMap({
      'id': '1',
      'title': 'title',
      'priority': 1,
      'abbr': 'sd',
      'orders': [
        {
          'id': 'das',
          'position': 1,
          'timestamp': '2020-01-01 18:37:00.000',
          'status': 'inProgress',
        },
      ],
    });
    expect(queue, isA<QueueEntity>());
    expect(queue.title, 'title');
    expect(queue.priority, 1);
    expect(queue.orders.first.status, OrderStatus.inProgress);
  });
}
