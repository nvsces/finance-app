part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const SubscriptionEvent._();

  const factory SubscriptionEvent.read(
      {required SubscriptionModel subscriptions,}) = ReadSubscriptionEvent;

  const factory SubscriptionEvent.create(
      {required SubscriptionModel subscriptions,}) = CreateSubscriptionEvent;

  const factory SubscriptionEvent.edit(
      {required SubscriptionModel subscriptions,}) = EditSubscriptionEvent;

  const factory SubscriptionEvent.delete(
      {required SubscriptionModel subscriptions,}) = DeleteSubscriptionEvent;
}
