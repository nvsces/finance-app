import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:finance_app/domain/state/upload_file/upload_file_bloc.dart';
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
        create: (context) =>
            injector.get<UploadFileBloc>()..add(UploadFileEvent.init()),
        child: Scaffold(
          body: _UploadFileContent(),
        ));
  }
}

class _UploadFileContent extends StatelessWidget {
  const _UploadFileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: SvgPicture.asset(Svgs.iconBack),
                onTap: () {
                  context.go(MobileRoutes.home.path);
                },
              ),
              //
              SizedBox(
                width: 300,
                child: Center(
                  child: Text(
                    context.localization.uploadTitle,
                    style: AppTextStyle.mainBoldText.copyWith(fontSize: 32),
                  ),
                ),



            ],
          ),
          Expanded(
            child: BlocListener<UploadFileBloc, UploadFileState>(
                listener: (context, state) {
                  if (state.result is FailureUploadFileState) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text(context.localization.uploadSnackBarFailur)));
                  }
                  if (state.result is SuccessUploadFileState) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text(context.localization.uploadSnackBarComplit)));
                    context.pop();
                  }
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Svgs.iconInfo),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                  width: 300,
                                  child: Text(
                                    AppLocalizations.of(context)!.uploadInfo,
                                    style: AppTextStyle.mainNormalText,
                                  )),
                            ],
                          ),
                          const SizedBox(
                              height: 150, child: const SelectBankWidget()),
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
                          })
                        ],
                      ),
                    ),
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
                                        .add(UploadFileEvent.create());
                                  },
                                ),
                              )),
                    ),
                  ],
                )),
          ),
        ],
      ),
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
          itemCount: state.bankList.length,
          itemBuilder: (context, index) {
            final items = state.bankList;
            return CardBankWidget(
                title: title[index],
                image: items[index].image,
                isSelected: index == state.currentBank,
                onTap: () {
                  context.read<UploadFileBloc>().add(UploadFileEvent.select(
                      index: index == state.currentBank ? -1 : index));
                });
          });
    });
  }
}

class CardBankWidget extends StatelessWidget {
  const CardBankWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected,
      required this.onTap});

  final String title;
  final JpgAsset image;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 20,
      ),
      title: Text(
        title,
        style: AppTextStyle.mainNormalText,
      ),
      trailing: IconButton(
          onPressed: onTap,
          icon: isSelected
              ? Icon(
                  Icons.radio_button_checked,
                  color: context.colors.red,
                )
              : const Icon(Icons.radio_button_unchecked)),
    );
  }
}
