import 'package:fedman_admin_app/core/utils/logger_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../presentation/account/data/repositories/account_repo.dart';
import '../../presentation/account/data/repositories/local/local_auth_repo.dart';
import '../network/api_client.dart';
import '../utils/managers/google_signin_manager.dart';



Future<void> setupDependencyInjection() async {
  final GetIt getIt = GetIt.instance;

  // SharedPreferences instance
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  // Register ApiClient
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: 'http://api.fedman.io'),
  );


  // Register AccountRepo
  getIt.registerLazySingleton<AccountRepo>(
    () => AccountRepo(
      apiClient: getIt<ApiClient>(),
    ),
  );

  // Register AccountRepo
  getIt.registerLazySingleton<LoggerService>(
    () => LoggerService(
    ),
  );


  getIt.registerLazySingleton(
        () => LocalAuthRepository(getIt.get()),
  );


}


