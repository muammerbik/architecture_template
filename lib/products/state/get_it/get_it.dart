import 'package:architecture_template/products/data/repository/repository.dart';
import 'package:architecture_template/products/data/service/login/login_service_manager.dart';
import 'package:architecture_template/products/data/service/manager/product_service_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupRepository();
  setupServices();
}

void setupRepository() {
  getIt.registerLazySingleton<Repository>(
    () => Repository(),
  );
}

void setupServices() {
  getIt
      .registerLazySingleton<ProductServiceManager>(ProductServiceManager.base);
  getIt.registerLazySingleton<LoginServiceManager>(
      () => LoginServiceManager(getIt.get<ProductServiceManager>()));
}
