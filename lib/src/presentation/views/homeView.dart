import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:prayer/src/presentation/blocs/remote_prayer/remote_prayer_cubits.dart';
import 'package:prayer/src/presentation/widgets/body_view.dart';

import '../blocs/remote_prayer/remote_prayer_states.dart';

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Prayer_Cubit.of(context).check_Location();
    }, []);
    return BlocBuilder(
      bloc: Prayer_Cubit.of(context),
      builder: (context, state) {
        if (state is PrayerGetLocation) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return Body_View(
            state: state,
          );
        }
      },
    );
  }
}
