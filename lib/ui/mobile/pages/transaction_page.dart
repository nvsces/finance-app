
import 'package:finance_app/di/injector.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/state/transaction/transaction_bloc.dart';
import '../../../domain/transaction_list/transaction_list_bloc.dart';
import '../widgets/transaction_widget.dart';


class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionListBloc>(create: (context)=> injector.get<TransactionListBloc>()..add(TransactionListEvent.read()), child: TransactionContent(),);
  }
}



class TransactionContent extends StatelessWidget {

  const TransactionContent({super.key,});



  @override
  Widget build(BuildContext context) {

  
    return BlocBuilder<TransactionListBloc, TransactionListState>(builder: (context, state) {
        return ListView.builder(
            itemCount: state.transactions.length,
            itemBuilder: (context, index) {
              return  TransactionWidget(
                    transaction: state.transactions[index]
                  );
                },
         
      );});}}
      
      
          
  
  


