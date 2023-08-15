part of 'calendar_date_range_picker.dart';

class _MonthItem extends StatelessWidget {
  const _MonthItem({
    required this.selectedDateStart,
    required this.selectedDateEnd,
    required this.currentDate,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    required this.displayedMonth,
    required this.selectedColor,
    required this.selectedTextStyle,
    required this.rangeColor,
    required this.disabledTextStyle,
    required this.textStyle,
  });
  final DateTime? selectedDateStart;
  final DateTime? selectedDateEnd;
  final DateTime currentDate;
  final ValueChanged<DateTime> onChanged;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime displayedMonth;
  final TextStyle? selectedTextStyle;
  final TextStyle? disabledTextStyle;
  final TextStyle? textStyle;
  final Color? selectedColor;
  final Color? rangeColor;

  Color _highlightColor(BuildContext context) {
    return rangeColor ??
        DatePickerTheme.of(context).rangeSelectionBackgroundColor ??
        DatePickerTheme.defaults(context).rangeSelectionBackgroundColor!;
  }

  Widget _buildDayItem(
    BuildContext context,
    DateTime dayToBuild,
    int firstDayOffset,
    int daysInMonth,
  ) {
    final ThemeData theme = Theme.of(context);
    // ignore: unused_local_variable
    final ColorScheme colorScheme = theme.colorScheme;
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final TextDirection textDirection = Directionality.of(context);
    final Color highlightColor = _highlightColor(context);
    final int day = dayToBuild.day;

    final bool isDisabled =
        dayToBuild.isAfter(lastDate) || dayToBuild.isBefore(firstDate);

    BoxDecoration? decoration;
    TextStyle? itemStyle = textStyle;

    final bool isRangeSelected =
        selectedDateStart != null && selectedDateEnd != null;
    final bool isSelectedDayStart = selectedDateStart != null &&
        dayToBuild.isAtSameMomentAs(selectedDateStart!);
    final bool isSelectedDayEnd = selectedDateEnd != null &&
        dayToBuild.isAtSameMomentAs(selectedDateEnd!);
    final bool isInRange = isRangeSelected &&
        dayToBuild.isAfter(selectedDateStart!) &&
        dayToBuild.isBefore(selectedDateEnd!);

    _HighlightPainter? highlightPainter;

    if (isSelectedDayStart || isSelectedDayEnd) {
      // The selected start and end dates gets a circle background
      // highlight, and a contrasting text color.
      decoration = BoxDecoration(
        color: selectedColor,
        shape: BoxShape.circle,
      );
      itemStyle = selectedTextStyle ?? itemStyle;

      if (isRangeSelected && selectedDateStart != selectedDateEnd) {
        final _HighlightPainterStyle style = isSelectedDayStart
            ? _HighlightPainterStyle.highlightTrailing
            : _HighlightPainterStyle.highlightLeading;

        highlightPainter = _HighlightPainter(
          color: highlightColor,
          style: style,
          textDirection: textDirection,
        );
      }
    } else if (isInRange) {
      // The days within the range get a light background highlight.
      highlightPainter = _HighlightPainter(
        color: highlightColor,
        style: _HighlightPainterStyle.highlightAll,
        textDirection: textDirection,
      );
    } else if (isDisabled) {
      itemStyle = disabledTextStyle ?? itemStyle?.copyWith(color: Colors.grey);
    } else if (DateUtils.isSameDay(currentDate, dayToBuild)) {
      // The current day gets a different text color and a circle stroke
      // border.
      // itemStyle = textTheme.bodyMedium?.apply(color: colorScheme.primary);
      // itemStyle = selectedTextStyle ?? itemStyle;
      // decoration = BoxDecoration(
      //   border: Border.all(color: colorScheme.primary),
      //   shape: BoxShape.circle,
      // );
    }

    final String semanticLabelSuffix =
        DateUtils.isSameDay(currentDate, dayToBuild)
            ? ', ${localizations.currentDateLabel}'
            : '';
    String semanticLabel =
        '${localizations.formatDecimal(day)}, ${localizations.formatFullDate(dayToBuild)}$semanticLabelSuffix';
    if (isSelectedDayStart) {
      semanticLabel =
          localizations.dateRangeStartDateSemanticLabel(semanticLabel);
    } else if (isSelectedDayEnd) {
      semanticLabel =
          localizations.dateRangeEndDateSemanticLabel(semanticLabel);
    }

    Widget dayWidget = Container(
      decoration: decoration,
      child: Center(
        child: Semantics(
          label: semanticLabel,
          selected: isSelectedDayStart || isSelectedDayEnd,
          child: ExcludeSemantics(
            child: Text(
              localizations.formatDecimal(day),
              style: itemStyle,
            ),
          ),
        ),
      ),
    );

    if (highlightPainter != null) {
      dayWidget = CustomPaint(
        painter: highlightPainter,
        child: dayWidget,
      );
    }

    if (!isDisabled) {
      dayWidget = InkResponse(
        onTap: () => onChanged(dayToBuild),
        radius: _monthItemRowHeight / 2 + 4,
        child: dayWidget,
      );
    }

    return dayWidget;
  }

  Widget _buildEdgeContainer(BuildContext context, bool isHighlighted) {
    return Container(color: isHighlighted ? _highlightColor(context) : null);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final int year = displayedMonth.year;
    final int month = displayedMonth.month;
    final int daysInMonth = DateUtils.getDaysInMonth(year, month);
    final int dayOffset = DateUtils.firstDayOffset(year, month, localizations);
    final int weeks = ((daysInMonth + dayOffset) / DateTime.daysPerWeek).ceil();
    final double gridHeight =
        weeks * _monthItemRowHeight + (weeks - 1) * _monthItemSpaceBetweenRows;
    final List<Widget> dayItems = <Widget>[];

    for (int i = 0; true; i += 1) {
      // 1-based day of month, e.g. 1-31 for January, and 1-29 for February on
      // a leap year.
      final int day = i - dayOffset + 1;
      if (day > daysInMonth) {
        break;
      }
      if (day < 1) {
        dayItems.add(Container());
      } else {
        final DateTime dayToBuild = DateTime(year, month, day);
        final Widget dayItem = _buildDayItem(
          context,
          dayToBuild,
          dayOffset,
          daysInMonth,
        );
        dayItems.add(dayItem);
      }
    }

    // Add the leading/trailing edge containers to each week in order to
    // correctly extend the range highlight.
    final List<Widget> paddedDayItems = <Widget>[];
    for (int i = 0; i < weeks; i++) {
      final int start = i * DateTime.daysPerWeek;
      final int end = math.min(
        start + DateTime.daysPerWeek,
        dayItems.length,
      );
      final List<Widget> weekList = dayItems.sublist(start, end);

      final DateTime dateAfterLeadingPadding =
          DateTime(year, month, start - dayOffset + 1);
      // Only color the edge container if it is after the start date and
      // on/before the end date.
      final bool isLeadingInRange = !(dayOffset > 0 && i == 0) &&
          selectedDateStart != null &&
          selectedDateEnd != null &&
          dateAfterLeadingPadding.isAfter(selectedDateStart!) &&
          !dateAfterLeadingPadding.isAfter(selectedDateEnd!);
      weekList.insert(0, _buildEdgeContainer(context, isLeadingInRange));

      // Only add a trailing edge container if it is for a full week and not a
      // partial week.
      if (end < dayItems.length ||
          (end == dayItems.length &&
              dayItems.length % DateTime.daysPerWeek == 0)) {
        final DateTime dateBeforeTrailingPadding =
            DateTime(year, month, end - dayOffset);
        // Only color the edge container if it is on/after the start date and
        // before the end date.
        final bool isTrailingInRange = selectedDateStart != null &&
            selectedDateEnd != null &&
            !dateBeforeTrailingPadding.isBefore(selectedDateStart!) &&
            dateBeforeTrailingPadding.isBefore(selectedDateEnd!);
        weekList.add(_buildEdgeContainer(context, isTrailingInRange));
      }

      paddedDayItems.addAll(weekList);
    }

    final double maxWidth =
        MediaQuery.orientationOf(context) == Orientation.landscape
            ? _maxCalendarWidthLandscape
            : _maxCalendarWidthPortrait;
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          height: _monthItemHeaderHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: AlignmentDirectional.centerStart,
          child: ExcludeSemantics(
            child: Text(
              localizations.formatMonthYear(displayedMonth),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: gridHeight,
          ),
          child: GridView.custom(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: _monthItemGridDelegate,
            childrenDelegate: SliverChildListDelegate(
              paddedDayItems,
              addRepaintBoundaries: false,
            ),
          ),
        ),
        const SizedBox(height: _monthItemFooterHeight),
      ],
    );
  }
}
