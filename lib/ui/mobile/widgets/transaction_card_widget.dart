import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/domain/state/transaction/category_transaction_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({super.key, required this.transaction});
  final Transaction transaction;

  void _showDialog(BuildContext context, CategoryTransactionBloc bloc,
      Transaction transaction) {
    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider<CategoryTransactionBloc>.value(
          value: bloc,
          child: CupertinoAlertDialog(
            title: const Text('Выберите действие'),
            actions: [
              CupertinoDialogAction(
                child: const Text('Не учитывать'),
                onPressed: () {
                  bloc.add(CategoryTransactionEvent.disabled(transaction));
                  context.pop();
                },
              ),
              _AddCommentWidget(
                action: (comment) {
                  bloc.add(
                    CategoryTransactionEvent.addComment(
                      comment: comment,
                      tr: transaction,
                    ),
                  );
                  context.pop();
                },
              ),
              CupertinoDialogAction(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Отменить'),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        _showDialog(
            context, context.read<CategoryTransactionBloc>(), transaction);
      },
      title: Text(transaction.name),
      subtitle: Text(transaction.category.name),
      trailing: Text(transaction.value.toString()),
    );
  }
}

class _AddCommentWidget extends StatefulWidget {
  const _AddCommentWidget({required this.action});

  final void Function(String) action;

  @override
  State<_AddCommentWidget> createState() => __AddCommentWidgetState();
}

class __AddCommentWidgetState extends State<_AddCommentWidget> {
  bool showInput = false;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      child: Column(
        children: [
          if (!showInput)
            const Text(
              'Добавить комментарий',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          if (showInput)
            Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50.0,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Добавить комментарий',
                      fillColor: Colors.grey,
                      hoverColor: Colors.transparent,
                      suffixIcon: IconButton(
                        onPressed: () {
                          widget.action.call(controller.text);
                        },
                        icon: const Icon(Icons.check),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      onPressed: () {
        setState(() {
          showInput = true;
        });
        // widget.action.call();
      },
    );
  }
}
