

import '../../../locator.dart';
import '../../presentation/blocs/remote_prayer/remote_prayer_cubits.dart';
import '../models/prayer_model.dart';
class Receive_Controller {
  Prayer? New_prayer_model;
  int? Index;

  getNextData(double x,double y ,int z ,int m) async {
    return await getIt.get<PrayerCubit>().get_prayer(x,y,z,m);

  }
  checkLocation()async{
    return await getIt.get<PrayerCubit>().check_Location();
  }
}
