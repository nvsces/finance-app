import 'package:json_annotation/json_annotation.dart';

import 'package:finance_app/data/models/category.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  final int id;
  final String name;
  final CategoryModel category;
  final String? comment;
  final double value;
  final int date;
  final bool enabled;
  final int walletId;
  Transaction(
    this.id,
    this.name,
    this.category,
    this.comment,
    this.value,
    this.date,
    this.enabled,
    this.walletId,
  );

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  String toString() {
    return 'Transaction(id: $id, name: $name, category: $category, comment: $comment, value: $value, date: $date, enabled: $enabled, walletId: $walletId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.id == id &&
        other.name == name &&
        other.category == category &&
        other.comment == comment &&
        other.value == value &&
        other.date == date &&
        other.enabled == enabled &&
        other.walletId == walletId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        category.hashCode ^
        comment.hashCode ^
        value.hashCode ^
        date.hashCode ^
        enabled.hashCode ^
        walletId.hashCode;
  }

  Transaction copyWith({
    int? id,
    String? name,
    CategoryModel? category,
    String? comment,
    double? value,
    int? date,
    bool? enabled,
    int? walletId,
  }) {
    return Transaction(
      id ?? this.id,
      name ?? this.name,
      category ?? this.category,
      comment ?? this.comment,
      value ?? this.value,
      date ?? this.date,
      enabled ?? this.enabled,
      walletId ?? this.walletId,
    );
  }
}
