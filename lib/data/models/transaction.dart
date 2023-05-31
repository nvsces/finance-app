import 'dart:convert';

class Transaction {
  final int id;
  final String name;
  final String category;
  final String? comment;
  final double value;
  final int date;
  final bool enabled;
  Transaction({
    required this.name,
    required this.category,
    required this.value,
    required this.date,
    this.comment,
    required this.id,
    required this.enabled,
  });

  Transaction copyWith({
    String? name,
    String? category,
    double? value,
    int? date,
    int? id,
    String? comment,
    bool? enabled,
  }) {
    return Transaction(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      name: name ?? this.name,
      category: category ?? this.category,
      value: value ?? this.value,
      date: date ?? this.date,
      enabled: enabled ?? this.enabled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'comment': comment,
      'id': id,
      'name': name,
      'category': category,
      'value': value,
      'date': date,
      'enabled': enabled,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] ?? 0,
      comment: map['comment'],
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      value: map['value']?.toDouble() ?? 0.0,
      date: map['date']?.toInt() ?? 0,
      enabled: map['enabled'] ?? true,
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Transaction(name: $name, category: $category, value: $value, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.name == name &&
        other.category == category &&
        other.value == value &&
        other.comment == comment &&
        other.id == id &&
        other.enabled == enabled &&
        other.date == date;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        category.hashCode ^
        value.hashCode ^
        date.hashCode ^
        id.hashCode ^
        enabled.hashCode ^
        comment.hashCode;
  }
}
