import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/date_formatters.dart';
import 'package:finance_app/ui/mobile/widgets/calendar/calendar_date_range_picker.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:finance_app/ui/theme/button/main_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
    required this.onDateTimeChanged,
  });

  final void Function(DateTime? start, DateTime? end) onDateTimeChanged;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime? startDate;
  DateTime? endDate;

  int selectedDate = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 7.0),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Back'),
            ),
            const SizedBox(height: 7.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _DateItem(
                    dateTime: startDate,
                    hint: 'Start Date',
                    isSelected: selectedDate == 0,
                  ),
                  _DateItem(
                    dateTime: endDate,
                    hint: 'End Date',
                    isSelected: selectedDate == 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: CalendarDateRangePicker(
                firstDate: DateTime(2023),
                lastDate: DateTime.now(),
                initialEndDate: DateTime(2023, 7, 26),
                initialStartDate: DateTime(2023, 7, 23),
                onEndDateChanged: (DateTime? value) {
                  print('end:$value');
                  setState(() {
                    endDate = value;
                  });
                },
                onStartDateChanged: (DateTime value) {
                  print('start:$value');
                  setState(() {
                    startDate = value;
                  });
                },
                selectedColor: context.colors.mainElement,
                selectedTextStyle: AppTextStyle.defaultTypeset.copyWith(
                  color: context.colors.white,
                ),
                rangeColor: context.colors.navigationAndPanels,
                disabledTextStyle: AppTextStyle.defaultTypeset.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: SizedBox(
            height: 40,
            width: 100,
            child: MainButton.normal(
              label: 'Done',
              onTap: () {
                widget.onDateTimeChanged.call(startDate, endDate);
                context.pop();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _DateItem extends StatelessWidget {
  const _DateItem({
    super.key,
    required this.dateTime,
    required this.isSelected,
    required this.hint,
  });
  final DateTime? dateTime;
  final bool isSelected;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormatters.calendar;
    return Column(
      children: [
        Text(
          dateTime == null ? hint : dateFormat.format(dateTime!),
          style: AppTextStyle.secondaryText.copyWith(
            color: context.colors.secondaryText,
          ),
        ),
        // if (isSelected)
        //   Divider(
        //     color: context.colors.mainElement,
        //     height: 0.5,
        //   ),
      ],
    );
  }
}
