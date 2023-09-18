import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: context.colors.white,
          title: Text(
            'Goal',
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
                      children: [
                        SvgPicture.asset(Svgs.iconInfo),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          child: Text(
                            'Feature is currently\nunavailable.',
                            style: AppTextStyle.mainNormalText,
                          ),
                        ),
                      ],
                    ),),
        );
    
  }}