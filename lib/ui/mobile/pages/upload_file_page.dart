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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final wallets = context.read<WalletBloc>().state.wallets;
        final walletId = wallets.isEmpty ? -1 : wallets.first.id!;
        return injector.get<UploadFileBloc>()
          ..add(const UploadFileEvent.init())
          ..add(UploadFileEvent.setWalletId(walletId: walletId));
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
            ),),
      ),
    );
  }
}

class _UploadFileContent extends StatelessWidget {
  const _UploadFileContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BlocListener<UploadFileBloc, UploadFileState>(
            listener: (context, state) {
              if (state.result is FailureUploadFileState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(context.localization.uploadSnackBarFailur),
                  ),
                );
              }
              if (state.result is SuccessUploadFileState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(context.localization.uploadSnackBarComplit),
                  ),
                );
                // context.pop();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
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
                  Divider(
                    color: context.colors.mainElement,
                    thickness: 2,
                  ),
                  BlocBuilder<UploadFileBloc, UploadFileState>(
                    builder: (context, state) {
                      if (state.result is FailureUploadFileState) {}
                      if (state.result is SuccessUploadFileState) {
                        return Text(state.fileName);
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  const Spacer(),
                  Center(
                    child: BlocBuilder<UploadFileBloc, UploadFileState>(
                      builder: (context, state) => SizedBox(
                        height: 40,
                        width: 200,
                        child: MainButton.normal(
                          label: context.localization.uploadButton,
                          enabled: state.isSelected,
                          onTap: () {
                            if (!state.isSelected) {
                              return;
                            }
                            context
                                .read<UploadFileBloc>()
                                .add(const UploadFileEvent.create());
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
