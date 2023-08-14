import 'package:dotted_border/dotted_border.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../router/mobile_routes.dart';

class CreateWalletStartWidget extends StatelessWidget {
  const CreateWalletStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Svgs.iconInfo),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    // width: 350,
                    child: Text(
                      'You don’t have any wallets. Click on “+” to create =)',
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.mainNormalText,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                context.push(MobileRoutes.createWalet.path).then((value) {
                  context.read<WalletBloc>().add(const WalletEvent.read());
                });
              },
              child: SizedBox(
                height: 168,
                width: 280,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(32),
                  dashPattern: const [24, 20],
                  color: AppColors.secondaryElement,
                  strokeWidth: 5.6,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 56),
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
      ],
    );
  }
}
