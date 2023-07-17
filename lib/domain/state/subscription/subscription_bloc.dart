
import 'package:finance_app/data/models/subscription/subscription.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_bloc.freezed.dart';
part 'subscription_event.dart';
part 'subscription_state.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionBloc() : super(SubscriptionState.initial()) {
    on<CreateSubscriptionEvent>(_create);
    on<ReadSubscriptionEvent>(_read);
    on<EditSubscriptionEvent>(_edit);
    on<DeleteSubscriptionEvent>(_delete);
  }
  void _create(CreateSubscriptionEvent event, Emitter<SubscriptionState> emit) {
    final state = this.state;
    emit(SubscriptionState(
        subscriptions: List.from(state.subscriptions)
          ..add(event.subscriptions),),);
  }

  // void updateCode(List subscriptions, String value, int index) {
  //   subscriptions.insert(index, value);
  //   emit(
  //     state.copyWith(subscriptions: subscriptions),
  //   );
  // }

  void _read(ReadSubscriptionEvent event, Emitter<SubscriptionState> emit) {
    // ...
  }

  void _edit(EditSubscriptionEvent event, Emitter<SubscriptionState> emit) {
    // ...
  }

  void _delete(DeleteSubscriptionEvent event, Emitter<SubscriptionState> emit) {
    // ...
  }
}
