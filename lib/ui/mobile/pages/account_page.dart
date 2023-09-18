import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/language/language_bloc.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/mobile/widgets/wallet_item_card.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView(
          children: [
            // const CircleAvatar(
            //   radius: 50,
            //   backgroundColor: AppColors.mainElement,
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'User Userovich',
            //       style: AppTextStyle.mainNormalText.copyWith(fontSize: 24),
            //     ),
            //     const SizedBox(
            //       width: 9,
            //     ),
            //     SvgPicture.asset(Svgs.iconEdit),
            //   ],
            // ),
            const SizedBox(
              height: 28,
            ),
            // Column(
            //   // crossAxisAlignment: CrossAxisAlignment.start,

            //   children: [
            //     Text(
            //       context.localization.accountTitle,
            //       style: AppTextStyle.mainNormalText.copyWith(fontSize: 16),
            //     ),
            //     const SizedBox(
            //       height: 12,
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SizedBox(
            //           height: 40,
            //           width: 310,
            //           child: TextFormField(
            //             style: AppTextStyle.appButton1.copyWith(
            //                 color: context.colors.white, fontSize: 15),
            //             onChanged: (value) {},
            //             keyboardType: TextInputType.text,
            //             inputFormatters: [
            //               FilteringTextInputFormatter.singleLineFormatter
            //             ],
            //             decoration: InputDecoration(
            //               filled: true,
            //               fillColor: context.colors.secondaryElement,
            //               border: OutlineInputBorder(
            //                 borderSide: BorderSide.none,
            //                 borderRadius: BorderRadius.circular(20),
            //               ),
            //               contentPadding:
            //                   const EdgeInsets.only(left: 15, right: 15),
            //               hintText: context.localization.accountField,
            //               hintStyle: AppTextStyle.appButton1.copyWith(
            //                 color: context.colors.white,
            //                 fontSize: 15,
            //               ),
            //               enabledBorder: const OutlineInputBorder(
            //                 borderRadius: BorderRadius.all(Radius.circular(20)),
            //                 borderSide: BorderSide.none,
            //               ),
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 8,
            //         ),
            //         SvgPicture.asset(Svgs.iconEdit)
            //       ],
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 28,
            ),
            BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                return _WalletList(
                  wallets: state.wallets,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.secondaryElement,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.localization.accountGeneral,
                        style:
                            AppTextStyle.mainNormalText.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            context.localization.accountLanguage,
                            style: AppTextStyle.mainNormalText
                                .copyWith(fontSize: 16),
                          ),
                          const Spacer(),
                          BlocBuilder<LanguageBloc, LanguageState>(
                            builder: (context, state) {
                              return InkWell(
                                onTap: () {
                                  state.selectedLocale ==
                                          state.supportedLocale.first
                                      ? context.read<LanguageBloc>().add(
                                            LanguageEvent.selectedLocale(
                                              AppLocalizations
                                                  .supportedLocales.last,
                                            ),
                                          )
                                      : context.read<LanguageBloc>().add(
                                            LanguageEvent.selectedLocale(
                                              AppLocalizations
                                                  .supportedLocales.first,
                                            ),
                                          );
                                },
                                child: Text(
                                  state.selectedLocale ==
                                          state.supportedLocale.first
                                      ? 'English'
                                      : 'Русский',
                                  style: AppTextStyle.mainNormalText.copyWith(
                                    color: AppColors.mainElement,
                                    fontSize: 16,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            context.localization.accountTheme,
                            style: AppTextStyle.mainNormalText
                                .copyWith(fontSize: 16),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'only light',
                              style: AppTextStyle.mainNormalText.copyWith(
                                color: AppColors.mainElement,
                                fontSize: 16,
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
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.secondaryElement,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.localization.accountOther,
                        style:
                            AppTextStyle.mainNormalText.copyWith(fontSize: 20),
                      ),
                      // const SizedBox(
                      //   height: 16,
                      // ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Text(
                      //     context.localization.accountLicenses,
                      //     style: AppTextStyle.mainNormalText
                      //         .copyWith(fontSize: 16),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          '${context.localization.accountVersion} 1.0.0',
                          style: AppTextStyle.mainNormalText
                              .copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.logout());
                        },
                        child: Text(
                          context.localization.accountExit,
                          style: AppTextStyle.mainNormalText
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WalletList extends StatefulWidget {
  final List<Wallet> wallets;
  const _WalletList({super.key, required this.wallets});

  @override
  State<_WalletList> createState() => __WalletListState();
}

class __WalletListState extends State<_WalletList> {
  final ScrollController _scrollController = ScrollController();
  double angle = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        angle = _scrollController.offset * 0.1; // Adjust the rotation speed
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return SizedBox(
      height: 178,
      child: CarouselSlider(
        items: [
          ...List.generate(
            widget.wallets.length,
            (index) => WalletItemCard(
              wallet: widget.wallets[index],
              size: const [
                10,
                168,
                260,
                12,
                10,
                2,
                24,
                26,
                16,
                4,
                20
              ], // такого говна ты ещё не видел)
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push(MobileRoutes.createWalet.path).then((value) {
                context.read<WalletBloc>().add(const WalletEvent.read());
              });
            },
            child: SizedBox(
              width: 240,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(32),
                  dashPattern: const [24, 20],
                  color: AppColors.secondaryElement,
                  strokeWidth: 5.6,
                  child: Center(
                    child: SvgPicture.asset(
                      Svgs.iconAdd,
                      color: AppColors.secondaryElement,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: queryData.size.height,
          aspectRatio: 16 / 9,
          viewportFraction: 0.7,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.4,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
