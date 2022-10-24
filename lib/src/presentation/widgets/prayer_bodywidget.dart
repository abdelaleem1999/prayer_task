import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:prayer/src/presentation/widgets/component_Prayer_body.dart';
import '../../data/models/prayer_model.dart';

class Prayer_Body extends HookWidget {
  Prayer_Body({
    this.prayer,
    this.Index_ofSelectDay,
});
  Prayer?  prayer;
  int? Index_ofSelectDay;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:1 ,
      itemBuilder:(context, index) =>  Component_Prayer_Body(
        Asr:prayer!.data[Index_ofSelectDay!].timings.Asr,
        Dhuhr:prayer!.data[Index_ofSelectDay!].timings.Dhuhr ,
        Fajr:prayer!.data[Index_ofSelectDay!].timings.Fajr ,
        Asha:prayer!.data[Index_ofSelectDay!].timings.Isha ,
        Maghrib:prayer!.data[Index_ofSelectDay!].timings.Maghrib ,
        Sunrise:prayer!.data[Index_ofSelectDay!].timings.Sunrise ,
      ),
    );
  }
}
