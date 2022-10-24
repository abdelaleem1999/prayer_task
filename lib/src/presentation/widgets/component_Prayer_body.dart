import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer/src/presentation/widgets/divider.dart';
import 'package:prayer/src/presentation/widgets/text_constractor.dart';

class ComponentPrayerBody extends StatefulWidget {
  ComponentPrayerBody(
      {this.Fajr, this.Sunrise, this.Dhuhr, this.Asr, this.Maghrib, this.Asha});

  final String? Fajr;
  final String? Sunrise;
  final String? Dhuhr;
  final String? Asr;
  final String? Maghrib;
  final String? Asha;

  _ComponentPrayerBodyState createState() => _ComponentPrayerBodyState();
}

class _ComponentPrayerBodyState extends State<ComponentPrayerBody> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextConstractor(
          prayerName: "Fajr ",
          prayerValue: widget.Fajr!,
        ),
        ConstDivider(),
        TextConstractor(
          prayerName: "Sunrise ",
          prayerValue: widget.Sunrise!,
        ),
        ConstDivider(),
        TextConstractor(
          prayerName: "Dhuhr ",
          prayerValue: widget.Dhuhr!,
        ),
        ConstDivider(),
        TextConstractor(
          prayerName: "Asr ",
          prayerValue: widget.Asr!,
        ),
        ConstDivider(),
        TextConstractor(
          prayerName: "Maghrib ",
          prayerValue: widget.Maghrib!,
        ),
        ConstDivider(),
        TextConstractor(
          prayerName: "Asha",
          prayerValue: widget.Asha!,
        ),
        ConstDivider(),
      ],
    );
  }
}
