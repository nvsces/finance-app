
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/transaction_list/transaction_list_bloc.dart';
import 'package:finance_app/ui/mobile/widgets/transaction_widget.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionListBloc>(create: (context)=> injector.get<TransactionListBloc>()..add(const TransactionListEvent.read()), child: const TransactionContent(),);
  }
}



class TransactionContent extends StatelessWidget {

  const TransactionContent({super.key,});



  @override
  Widget build(BuildContext context) {

  
    return BlocBuilder<TransactionListBloc, TransactionListState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Transaction',
              style: AppTextStyle.createWaletText,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,),
            
          body: ListView.builder(
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                return  TransactionWidget(
                      transaction: state.transactions[index],
                    );
                  },
           
              ),
        );},);
      }
}
      
      
          
  
  
