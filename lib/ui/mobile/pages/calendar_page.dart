
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CalendarDatePicker2(config: CalendarDatePicker2Config(
        calendarType: CalendarDatePicker2Type.range,
      ),
      value: [DateTime.now()],
      onValueChanged: (dates) {} ,),
    );
  }
}
