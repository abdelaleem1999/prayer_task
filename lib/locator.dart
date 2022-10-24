
import 'package:get_it/get_it.dart';
import 'package:prayer/src/data/repositories/model_controller.dart';
import 'package:prayer/src/presentation/blocs/remote_prayer/remote_prayer_cubits.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Prayer_Cubit>(
        () => Prayer_Cubit(),
  );
  getIt.registerLazySingleton<Receive_Controller>(
        () => Receive_Controller(),
  );
}
