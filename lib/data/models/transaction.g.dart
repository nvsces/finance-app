// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      json['id'] as int,
      json['name'] as String,
      CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      json['comment'] as String?,
      (json['value'] as num).toDouble(),
      json['date'] as int,
      json['enabled'] as bool,
      json['walletId'] as int,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'comment': instance.comment,
      'value': instance.value,
      'date': instance.date,
      'enabled': instance.enabled,
      'walletId': instance.walletId,
    };
