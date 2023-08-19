// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SubscriptionModel {
  final String name; // название
  final String cost; // стоимость
  final String currency; // валюта
  final String date; // дата платежа
  final String period; // период платежа
  final String reminder; // напоминание
  SubscriptionModel({
    required this.name,
    required this.cost,
    required this.currency,
    required this.date,
    required this.period,
    required this.reminder,
  });

  SubscriptionModel copyWith({
    String? name,
    String? cost,
    String? currency,
    String? date,
    String? period,
    String? reminder,
  }) {
    return SubscriptionModel(
      name: name ?? this.name,
      cost: cost ?? this.cost,
      currency: currency ?? this.currency,
      date: date ?? this.date,
      period: period ?? this.period,
      reminder: reminder ?? this.reminder,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'cost': cost,
      'currency': currency,
      'date': date,
      'period': period,
      'reminder': reminder,
    };
  }

  factory SubscriptionModel.fromMap(Map<String, dynamic> map) {
    return SubscriptionModel(
      name: map['name'] as String,
      cost: map['cost'] as String,
      currency: map['currency'] as String,
      date: map['date'] as String,
      period: map['period'] as String,
      reminder: map['reminder'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriptionModel.fromJson(String source) =>
      SubscriptionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Subscription(name: $name, cost: $cost, currency: $currency, date: $date, period: $period, reminder: $reminder)';
  }

  @override
  bool operator ==(covariant SubscriptionModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.cost == cost &&
        other.currency == currency &&
        other.date == date &&
        other.period == period &&
        other.reminder == reminder;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        cost.hashCode ^
        currency.hashCode ^
        date.hashCode ^
        period.hashCode ^
        reminder.hashCode;
  }
}
