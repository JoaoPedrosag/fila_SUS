import 'package:fila_antendimento/src/configuration/domain/value_objects/order.dart';
import 'package:fila_antendimento/src/configuration/infra/adapters/json_to_oder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('deve converter um map em objeto do tipo Order', () {
    final order = JsonToOrder.fromMap({
      'id': '1',
      'position': 1,
      'timestamp': '2020-01-01 18:37:00.000',
      'status': 'inProgress',
    });
    expect(order, isA<Order>());
    expect(order.status, OrderStatus.inProgress);
  });
}
