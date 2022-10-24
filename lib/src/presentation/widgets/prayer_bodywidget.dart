import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:prayer/src/presentation/widgets/component_Prayer_body.dart';
import '../../data/models/prayer_model.dart';

class PrayerBody extends HookWidget {
  PrayerBody({
    this.prayer,
    this.indexOfSelectDay,
});
  Prayer?  prayer;
  int? indexOfSelectDay;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:1 ,
      itemBuilder:(context, index) =>  ComponentPrayerBody(
        Asr:prayer!.data[indexOfSelectDay!].timings.Asr,
        Dhuhr:prayer!.data[indexOfSelectDay!].timings.Dhuhr ,
        Fajr:prayer!.data[indexOfSelectDay!].timings.Fajr ,
        Asha:prayer!.data[indexOfSelectDay!].timings.Isha ,
        Maghrib:prayer!.data[indexOfSelectDay!].timings.Maghrib ,
        Sunrise:prayer!.data[indexOfSelectDay!].timings.Sunrise ,
      ),
    );
  }
}
