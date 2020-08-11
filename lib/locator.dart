import 'package:get_it/get_it.dart';
import 'core/services/auth/auth-service.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => AuthService());
}
