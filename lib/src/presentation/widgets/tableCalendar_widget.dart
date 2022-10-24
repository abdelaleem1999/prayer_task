import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../locator.dart';
import '../../data/models/prayer_model.dart';
import '../../data/repositories/model_controller.dart';
import '../blocs/remote_prayer/remote_prayer_cubits.dart';
import '../blocs/remote_prayer/remote_prayer_states.dart';


class TableCalendarWidget extends HookWidget {
  @override
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
Prayer? prayer;

  Widget build(BuildContext context) {
    final model= useState(prayer);
    final _FocusedDay = useState(_focusedDay);

    return  Expanded(
      flex: 2,
      child: TableCalendar(
        calendarStyle: CalendarStyle(
          selectedTextStyle: TextStyle(
              color: Colors.black
          ),
          todayDecoration: BoxDecoration(
            color: Colors.cyan,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(

            border: Border.all(color: Colors.indigo, width: 2),
            shape: BoxShape.rectangle,
          ),
        ),
        headerStyle: HeaderStyle(

          leftChevronIcon: Icon(Ionicons.chevron_back_outline),
          rightChevronIcon: Icon(Ionicons.chevron_forward_outline),
          titleTextStyle:  TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          formatButtonVisible: false,
          formatButtonShowsNext: false,
        ),
        firstDay: DateTime.utc(2017, 1, 1),
        lastDay: DateTime.utc(2025, 12, 31),
        focusedDay: _FocusedDay.value,
        calendarFormat: CalendarFormat.week,

        selectedDayPredicate: (day) {

          return isSameDay(_FocusedDay.value, day);
        },
        onDaySelected: (selectedDay, focusedDay) async {
          if (!isSameDay(_selectedDay, selectedDay)) {


              _selectedDay = selectedDay;
              _FocusedDay.value = focusedDay;


              PrayerCubit.of(context).emit(PrayerLoading());

              getIt.get<Receive_Controller>().New_prayer_model= await getIt.get<Receive_Controller>().getNextData(
                  PrayerCubit.of(context).locationData!.latitude!,
                  PrayerCubit.of(context).locationData!.latitude!,
                  _FocusedDay.value.month, _FocusedDay.value.year

              );

              PrayerCubit.of(context).emit(PrayerInital());

          }
          // HomeCubit.of(context).index_of_seclectDay=_FocusedDay.value.day;
          getIt.get<Receive_Controller>().Index=(_FocusedDay.value.day)-1;

        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    )
    ;
  }
}
