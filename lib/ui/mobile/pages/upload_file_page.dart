import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/jpgs.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:finance_app/ui/theme/button/main_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/state/expenses/expenses_bloc.dart';
import '../widgets/with_out_wallet_widget.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return injector.get<UploadFileBloc>()
          ..add(const UploadFileEvent.init());
      },
      child: Scaffold(
        body: const _UploadFileContent(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: context.colors.white,
          title: Text(
            context.localization.uploadTitle,
            style: AppTextStyle.mainBoldText.copyWith(fontSize: 32),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(Svgs.iconBack),
            onPressed: () {
              context.go(MobileRoutes.home.path);
            },
          ),
        ),
      ),
    );
  }
}

class _UploadFileContent extends StatelessWidget {
  const _UploadFileContent();

  void _showErrorDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        content: Text(context.localization.uploadSnackBarFailur),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        content: Text(context.localization.uploadSnackBarComplit),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              context.pop();
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    ).whenComplete(() => context.pop());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BlocListener<UploadFileBloc, UploadFileState>(
            listener: (context, state) {
              if (state.result is FailureUploadFileState) {
                _showErrorDialog(context);
              }
              if (state.result is SuccessUploadFileState) {
                _showSuccessDialog(context);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Svgs.iconInfo),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Text(
                          context.localization.uploadInfo,
                          style: AppTextStyle.mainNormalText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SelectBankWidget(),
                  _SelectCardWidget(),
                  Divider(
                    color: context.colors.mainElement,
                    thickness: 2,
                  ),
                  _SelectFileSection(),
                  const Spacer(),
                  Center(
                    child: BlocBuilder<UploadFileBloc, UploadFileState>(
                      builder: (context, state) => SizedBox(
                        height: 40,
                        width: 200,
                        child: MainButton.normal(
                          label: context.localization.uploadButton,
                          hasProgress: state.isLoading,
                          enabled:
                              state.fileBytes != null && state.walletId != null,
                          onTap: () {
                            if (!state.isSelected) {
                              return;
                            }
                            context
                                .read<UploadFileBloc>()
                                .add(const UploadFileEvent.request());
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectBankWidget extends StatelessWidget {
  const SelectBankWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final title = [
      context.localization.uploadSber,
      context.localization.uploadTink
    ];
    return BlocBuilder<UploadFileBloc, UploadFileState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.bankList.length,
          itemBuilder: (context, index) {
            final items = state.bankList;
            return CardBankWidget(
              title: title[index],
              image: items[index].image,
              isSelected: index == state.currentBank,
              onTap: () {
                context.read<UploadFileBloc>().add(
                      UploadFileEvent.selectBank(
                        index: index == state.currentBank ? -1 : index,
                      ),
                    );
              },
            );
          },
        );
      },
    );
  }
}

class CardBankWidget extends StatelessWidget {
  const CardBankWidget({
    super.key,
    required this.title,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final JpgAsset image;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 20,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: AppTextStyle.mainNormalText,
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: isSelected
                  ? Icon(
                      Icons.radio_button_checked,
                      color: context.colors.red,
                    )
                  : const Icon(Icons.radio_button_unchecked),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class _SelectCardWidget extends StatelessWidget {
  const _SelectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadFileBloc, UploadFileState>(
      /// перерисовывает только тогда когда walletId поменяется
      buildWhen: (previous, current) => previous.walletId != current.walletId,
      builder: (context, upState) {
        return BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select wallet',
                  style: AppTextStyle.mainNormalText,
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.wallets.length,
                    itemBuilder: (context, i) {
                      final wallet = state.wallets[i];
                      return InkWell(
                        onTap: () {
                          if (wallet.id == null) return;
                          context.read<UploadFileBloc>().add(
                                UploadFileEvent.setWalletId(
                                  walletId: wallet.id!,
                                ),
                              );
                        },
                        child: WithOutWalletWidget(
                          wallet: wallet,
                          isSelected: upState.walletId == wallet.id,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 10.0),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _SelectFileSection extends StatelessWidget {
  const _SelectFileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadFileBloc, UploadFileState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select bank statement file',
                  style: AppTextStyle.mainNormalText,
                ),
                InkWell(
                  onTap: () {
                    if (!state.isSelected) return;
                    context
                        .read<UploadFileBloc>()
                        .add(const UploadFileEvent.selectFile());
                  },
                  child: Opacity(
                    opacity: state.isSelected ? 1 : 0.3,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: context.colors.mainElement,
                      ),
                      child: SvgPicture.asset(Svgs.iconPluse),
                    ),
                  ),
                ),
              ],
            ),
            if (state.fileName.isNotEmpty) Text(state.fileName),
          ],
        );
      },
    );
  }
}
