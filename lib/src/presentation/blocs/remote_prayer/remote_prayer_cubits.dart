import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:prayer/src/data/models/prayer_model.dart';
import 'package:prayer/src/presentation/blocs/remote_prayer/remote_prayer_states.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit() : super(PrayerInital());

  static PrayerCubit of(context) => BlocProvider.of(context);
  Location location = new Location();
  bool? check;
  PermissionStatus? permissions;
  LocationData? locationData;
  Prayer? prayerModel;

  Dio _dio = Dio();
  Future get_prayer(double latitude, double longitude , int month, int year) async {

    emit(PrayerLoading());
    try{
      final response = await _dio
          .get("http://api.aladhan.com/v1/calendar?latitude=${latitude}&longitude=${longitude}&method=2&month=$month&year=$year", options: Options());

      prayerModel = Prayer.fromJson(response.data);

      emit(PrayerInital());
      return prayerModel;

    } catch (e) {
        throw
            "Error";


    }
  }

  Future<void> check_Location() async {
    emit(PrayerGetLocation());
    check = await location.serviceEnabled();
    if (check!) {
      permissions = await location.hasPermission();
      if (permissions == PermissionStatus.granted) {
        locationData = await location.getLocation();
      } else {
        permissions = await location.requestPermission();
        if (permissions == PermissionStatus.granted) {
          locationData = await location.getLocation();
        } else {
          SystemNavigator.pop();
        }
      }
    } else {
      check = await location.requestService();
      if (check!) {
        permissions = await location.hasPermission();
        if (permissions == PermissionStatus.granted) {
          locationData = await location.getLocation();
        } else {
          permissions = await location.requestPermission();
          if (permissions == PermissionStatus.granted) {
            locationData = await location.getLocation();
          } else {
            SystemNavigator.pop();
          }
        }
      } else {
        SystemNavigator.pop();
      }
    }
    emit(PrayerInital());
  }

}
