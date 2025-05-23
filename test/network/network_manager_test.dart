import 'package:architecture_template/products/init/config/app_enviranment.dart';
import 'package:architecture_template/products/init/config/env_dev.dart';
import 'package:architecture_template/products/model/user_model.dart';
import 'package:architecture_template/products/service/manager/product_service_manager.dart';
import 'package:architecture_template/core/constants/api_constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final ProductServiceManager manager;
  setUp(
    () {
      AppEnvironment.setup(
        config: DevEnv(),
      );
      manager= ProductServiceManager.base();
    },
  );
  test('Tetst', () async {
    final response = await manager.send<User, List<User>>(ApiConstants.login,
        parseModel: const User(), method: RequestType.GET,);
    expect(response.data, isNotNull);
  });
}
