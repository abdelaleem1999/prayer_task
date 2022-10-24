
import 'package:flutter/material.dart';

abstract class PrayerState {}
class PrayerInital extends PrayerState {}
class PrayerLoading extends PrayerState {}
class PrayerGetLocation extends PrayerState {}
class PrayerException extends PrayerState {}
