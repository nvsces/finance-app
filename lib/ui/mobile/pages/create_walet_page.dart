import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/currency.dart';
import 'package:finance_app/domain/state/wallet/create_wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:finance_app/ui/theme/button/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class _CreateWalletContent extends StatelessWidget {
  const _CreateWalletContent();

  @override
  Widget build(BuildContext context) {
    final showKeyboard = MediaQuery.of(context).viewInsets.bottom > 0;
    return BlocConsumer<CreateWalletBloc, CreateWalletState>(
      listener: (context, state) {
        if (state.finish) {
          context.pop();
        }
      },
      builder: (context, state) {
        final title = state.title.isEmpty ? 'Enter the title' : state.title;
        final description =
            state.discription.isEmpty ? 'Description' : state.discription;
        final balance = state.balance.isEmpty ? 'Enter balance' : state.balance;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'App new wallet',
              style: AppTextStyle.createWaletText,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: SvgPicture.asset(Svgs.iconBack),
              iconSize: 24,
            ),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 55),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 20),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: context.colors.mainElement,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        title,
                                        style: AppTextStyle.titleWaletText,
                                      ),
                                      const SizedBox(height: 30),
                                      Text(
                                        description,
                                        style:
                                            AppTextStyle.descriptionWaletText,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          Text(
                                            balance,
                                            style:
                                                AppTextStyle.balanceWaletText,
                                          ),
                                          const Spacer(),
                                          SvgPicture.asset(state.currency.icon),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          Column(
                            children: [
                              WaletFieldWidget(
                                hint: 'Enter the title',
                                onChanged: (v) {
                                  context
                                      .read<CreateWalletBloc>()
                                      .add(CreateWalletEvent.updateTitle(v));
                                },
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(height: 15),
                              WaletFieldWidget(
                                hint: 'Description',
                                onChanged: (v) {
                                  context.read<CreateWalletBloc>().add(
                                        CreateWalletEvent.updateDiscription(v),
                                      );
                                },
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(height: 15),
                              WaletFieldWidget(
                                hint: 'Enter balance',
                                onChanged: (String value) {
                                  context.read<CreateWalletBloc>().add(
                                        CreateWalletEvent.updateBalance(value),
                                      );
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Currency',
                                  style: AppTextStyle.mainNormalText,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(
                                      const Size(280, 54),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                      AppColors.mainElement,
                                    ),
                                  ),
                                  onPressed: () {
                                    _bottomWidgetWallet(context);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        state.currency.title,
                                        style: AppTextStyle.titleWaletText,
                                      ),
                                      SvgPicture.asset(state.currency.icon),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (!showKeyboard)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: MainButton.normal(
                        label: 'Done',
                        onTap: () {
                          context
                              .read<CreateWalletBloc>()
                              .add(const CreateWalletEvent.saveWallet());
                        },
                      ),
                    ),
                  ),
              ],
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
      create: (context) => injector.get<CreateWalletBloc>(),
      child: const _CreateWalletContent(),
    );
  }
}

class WaletFieldWidget extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final void Function(String) onChanged;
  const WaletFieldWidget({
    super.key,
    required this.hint,
    required this.onChanged,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: AppTextStyle.appButton1
          .copyWith(color: context.colors.white, fontSize: 15),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.colors.secondaryElement,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.only(left: 15, right: 15),
        hintText: hint,
        hintStyle: AppTextStyle.appButton1
            .copyWith(color: context.colors.white, fontSize: 15),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

void _bottomWidgetWallet(BuildContext context) {
  showModalBottomSheet<void>(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext bc) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: MediaQuery.of(context).size.height * .30,
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              'Select currency',
              style: AppTextStyle.mainNormalText,
            ),
            const SizedBox(height: 8),
            Wrap(
              children: Currency.values
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: MediaQuery.of(context).size.height / 22,
                        child: WalletButtonWidget(
                          currency: e,
                          onPressed: () {
                            context
                                .read<CreateWalletBloc>()
                                .add(CreateWalletEvent.updateCurrency(e));
                          },
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      );
    },
  );
}

class WalletButtonWidget extends StatelessWidget {
  final Currency currency;
  final void Function() onPressed;
  const WalletButtonWidget({
    super.key,
    required this.currency,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(160, 40)),
        backgroundColor: MaterialStateProperty.all(AppColors.mainElement),
      ),
      onPressed: () {
        onPressed.call();
        context.pop();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(currency.title, style: AppTextStyle.walletButtonText),
          const SizedBox(width: 80),
          SvgPicture.asset(currency.icon),
        ],
      ),
    );
  }
}
