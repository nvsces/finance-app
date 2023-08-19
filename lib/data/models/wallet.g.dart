// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      balance: (json['balance'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'balance': instance.balance,
      'currency': instance.currency,
    };
