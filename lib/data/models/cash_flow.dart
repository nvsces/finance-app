import 'package:json_annotation/json_annotation.dart';

part 'cash_flow.g.dart';

@JsonSerializable()
class CashFlow {
  final String name;
  final int id;
  CashFlow({required this.name, required this.id});

  factory CashFlow.fromJson(Map<String, dynamic> json) =>
      _$CashFlowFromJson(json);

  Map<String, dynamic> toJson() => _$CashFlowToJson(this);
}
