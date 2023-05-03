import 'dart:convert';

import '../../models/cash_flow.dart';
import 'package:http/http.dart' as http;

class FinanceRepositoryImpl {
  // https://jsonplaceholder.typicode.com/users

  Future<List<CashFlow>> getExpenses() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      final List<dynamic> expensesJson = json.decode(response.body);
      return expensesJson.map((json) => CashFlow.fromJson(json)).toList();
    } else {
      throw Exception('Error');
    }
  }
}
