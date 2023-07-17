import 'package:finance_app/domain/state/wallet/create_wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:finance_app/ui/theme/button/app_button_base.dart';
import 'package:finance_app/ui/theme/button/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class _CreateWalletContent extends StatelessWidget {
  const _CreateWalletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateWalletBloc, CreateWalletState>(
      builder: (context, state) {
        final title = state.title.isEmpty ? 'Enter the title' : state.title;
        final description =
            state.discription.isEmpty ? 'Description' : state.discription;
        final balance = state.balance.isEmpty ? 'Enter balance' : state.balance;
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  Text('Add new wallet', style: AppTextStyle.createWaletText),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        // height: 168,
                        width: 280,
                        decoration: BoxDecoration(
                          color: context.colors.mainElement,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title, style: AppTextStyle.titleWaletText),
                              const SizedBox(height: 30),
                              Text(description,
                                  style: AppTextStyle.descriptionWaletText, overflow: TextOverflow.ellipsis,),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(balance,
                                      style: AppTextStyle.balanceWaletText),
                                  Spacer(),
                                  SvgPicture.asset(Svgs.iconRuble),
                                  Text('₽', style: AppTextStyle.balanceWaletText),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: 280,
                    child: Column(
                      children: [
                        WaletFieldWidget(
                          hint: 'Enter the title',
                          onChanged: (v) {
                            context
                                .read<CreateWalletBloc>()
                                .add(CreateWalletEvent.updateTitle(v));
                          }, keyboardType: TextInputType.text,
                        ),
                        const SizedBox(height: 15),
                        WaletFieldWidget(
                          hint: 'Description',
                          onChanged: (v) {
                            context.read<CreateWalletBloc>().add(CreateWalletEvent.updateDiscription(v));
                          }, keyboardType: TextInputType.text,
                        ),
                        const SizedBox(height: 15),
                        WaletFieldWidget(
                          hint: 'Enter balance',
                          onChanged: (String value) {
                            context.read<CreateWalletBloc>().add(CreateWalletEvent.updateBalance(value));
                          }, keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Currency',
                            style: AppTextStyle.mainNormalText,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 54,
                          width: 280,
                          child: MainButton.normal(
                            label: 'RUB ₽',
                            hasIcon: true,
                            positionIcon: PositionIcon.right,
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: MainButton.normal(label: 'Done'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CreateWaletPage extends StatelessWidget {
  const CreateWaletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateWalletBloc(),
      child: const _CreateWalletContent(),
    );
  }
}

class WaletFieldWidget extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final void Function(String) onChanged;
  const WaletFieldWidget(
      {super.key, required this.hint, required this.onChanged, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [],
      onChanged: onChanged,
      style: AppTextStyle.appButton1
          .copyWith(color: context.colors.white, fontSize: 15),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.colors.secondaryElement,
        
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.only(left: 15, right: 15),
        hintText: hint,
        hintStyle: AppTextStyle.appButton1
            .copyWith(color: context.colors.white, fontSize: 15),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none),
      ),
    );
  }
}
