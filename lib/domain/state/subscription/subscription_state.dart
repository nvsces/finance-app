part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState(
      {required List<SubscriptionModel> subscriptions,}) = _SubscriptionState;

  factory SubscriptionState.initial() =>
      const SubscriptionState(subscriptions: []);
}
