import 'dart:convert';

import 'package:fila_antendimento/src/configuration/domain/value_objects/order.dart';

class JsonToOrder {
  static Order fromMap(dynamic json) {
    return Order(
      position: json['position'],
      timestamp: json['timestamp'],
      status: json['priority'],
    );
  }
}
