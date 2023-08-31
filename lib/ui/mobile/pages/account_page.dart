import 'package:dotted_border/dotted_border.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/mobile/widgets/drawer.dart';
import 'package:finance_app/ui/mobile/widgets/wallet_item_card.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.mainElement,
        elevation: 0,
      ),
      body: Column(
        children: [
          BlocBuilder<WalletBloc, WalletState>(
            builder: (context, state) {
              return _WalletList(
                wallets: state.wallets,
              );
            },
          ),
        ],
      ),
      drawer: const DrawerWidget(),
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
  ScrollController _scrollController = ScrollController();
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
    return Container(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 8.0,
        bottom: 16.0,
      ),
      height: 178,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(
            widget.wallets.length,
            (index) => WalletItemCard(
              wallet: widget.wallets[index],
            ),
          ),
          const SizedBox(width: 15.0),
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
      ),
    );
  }
}
