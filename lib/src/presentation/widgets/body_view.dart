import 'package:flutter/material.dart';
import 'package:prayer/locator.dart';
import 'package:prayer/src/presentation/blocs/remote_prayer/remote_prayer_states.dart';
import 'package:prayer/src/presentation/widgets/intial_bodywidget.dart';
import 'package:prayer/src/presentation/widgets/prayer_bodywidget.dart';
import 'package:prayer/src/presentation/widgets/tableCalendar_widget.dart';

import '../../data/repositories/model_controller.dart';

class Body_View extends StatelessWidget {
  Body_View({
    this.state,
});
Object? state;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Scaffold(
        backgroundColor: Color(0xFF9CDCDA),
        body: Column(
          children: [
            TableCalendar_Widget(),
            Expanded(
              flex: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.zero, top: Radius.circular(30)),
                child: Container(
                    color: Colors.white,
                    child: state! is PrayerLoading  ? Center(
                      child: CircularProgressIndicator(),
                    )
                        :getIt.get<Receive_Controller>().New_prayer_model == null
                        ?                       Intial_Body()
                        :  Prayer_Body(
                      Index_ofSelectDay:getIt.get<Receive_Controller>().Index! ,
                      prayer: getIt.get<Receive_Controller>().New_prayer_model!,
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
