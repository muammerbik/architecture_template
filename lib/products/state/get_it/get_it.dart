import 'package:architecture_template/products/service/login_service_manager.dart';
import 'package:architecture_template/products/service/manager/product_service_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

///GetIt Class
void setupGetIT() {
  setupServices();
}

///GetIt Services
void setupServices() {
  // First register ProductServiceManager
  getIt
    ..registerLazySingleton<ProductServiceManager>(ProductServiceManager.base)

    // Then register LoginServiceManager with ProductServiceManager dependency
    ..registerLazySingleton<LoginServiceManager>(
      () => LoginServiceManager(getIt.get<ProductServiceManager>()),
    );
}
