import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer/src/presentation/widgets/divider.dart';
import 'package:prayer/src/presentation/widgets/text_constractor.dart';

class Component_Prayer_Body extends StatefulWidget {
  Component_Prayer_Body(
      {this.Fajr, this.Sunrise, this.Dhuhr, this.Asr, this.Maghrib, this.Asha});

  final String? Fajr;
  final String? Sunrise;
  final String? Dhuhr;
  final String? Asr;
  final String? Maghrib;
  final String? Asha;

  _Component_Prayer_BodyState createState() => _Component_Prayer_BodyState();
}

class _Component_Prayer_BodyState extends State<Component_Prayer_Body> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextConstractor(
          prayer_name: "Fajr ",
          prayer_value: widget.Fajr!,
        ),
        Const_Divider(),
        TextConstractor(
          prayer_name: "Sunrise ",
          prayer_value: widget.Sunrise!,
        ),
        Const_Divider(),
        TextConstractor(
          prayer_name: "Dhuhr ",
          prayer_value: widget.Dhuhr!,
        ),
        Const_Divider(),
        TextConstractor(
          prayer_name: "Asr ",
          prayer_value: widget.Asr!,
        ),
        Const_Divider(),
        TextConstractor(
          prayer_name: "Maghrib ",
          prayer_value: widget.Maghrib!,
        ),
        Const_Divider(),
        TextConstractor(
          prayer_name: "Asha",
          prayer_value: widget.Asha!,
        ),
        Const_Divider(),
      ],
    );
  }
}
