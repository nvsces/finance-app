import 'dart:convert';

class Transaction {
  final String name;
  final String category;
  final double value;
  final int date;
  Transaction({
    required this.name,
    required this.category,
    required this.value,
    required this.date,
  });

  Transaction copyWith({
    String? name,
    String? category,
    double? value,
    int? date,
  }) {
    return Transaction(
      name: name ?? this.name,
      category: category ?? this.category,
      value: value ?? this.value,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'category': category,
      'value': value,
      'date': date,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      value: map['value']?.toDouble() ?? 0.0,
      date: map['date']?.toInt() ?? 0,
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
        other.date == date;
  }

  @override
  int get hashCode {
    return name.hashCode ^ category.hashCode ^ value.hashCode ^ date.hashCode;
  }
}
