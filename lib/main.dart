import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer/locator.dart';
import 'package:prayer/src/presentation/blocs/remote_prayer/remote_prayer_cubits.dart';
import 'package:prayer/src/presentation/views/homeView.dart';
void main() {
  setup();
  runApp(const PrayerTask());
}

class PrayerTask extends StatelessWidget {
  const PrayerTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PrayerCubit(),
        ),


      ],

      child: MaterialApp(
        theme: ThemeData(fontFamily: 'IBM'),

        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
// new