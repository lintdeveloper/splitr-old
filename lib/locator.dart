import 'package:get_it/get_it.dart';
import 'package:splitr/app/providers/app_store.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => AppStore());
}
