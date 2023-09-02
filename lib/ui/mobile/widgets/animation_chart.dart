import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationChartWidget extends StatefulWidget {
  final List<PieChartSectionData>? sections;
  final String sumValue;
  final ScrollController? scrollController;
  const AnimationChartWidget({
    super.key,
    required this.sections,
    required this.sumValue,
    this.scrollController,
  });

  @override
  State<AnimationChartWidget> createState() => _AnimationChartWidgetState();
}

class _AnimationChartWidgetState extends State<AnimationChartWidget> {
  double scale = 1.0;
  double offset = 0.0;

  @override
  void initState() {
    widget.scrollController?.addListener(() {
      offset = widget.scrollController!.offset;
      if (offset < 0) return;
      setState(() {
        scale = (320 - widget.scrollController!.offset) / 320;
        if (scale > 1) {
          scale = 1;
        }
        if (scale < 0.5) {
          scale = 0.5;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Stack(
            children: [
              SizedBox(
                height: 300 * scale,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 130 * scale,
                    sections: widget.sections,
                  ),
                ),
              ),
              SizedBox(
                height: 300 * scale,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.sumValue,
                      style: AppTextStyle.mainBoldText.copyWith(
                        fontSize:
                            scale * (AppTextStyle.mainBoldText.fontSize ?? 0.0),
                      ),
                    ),
                    Center(
                      child: BlocBuilder<WalletBloc, WalletState>(
                        builder: (context, stateWallet) {
                          return Text(
                            '${context.localization.peiChartSources} ${stateWallet.wallets.length}',
                            style: AppTextStyle.secondaryText,
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
