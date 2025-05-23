import 'package:architecture_template/products/model/user_model.dart';
import 'package:architecture_template/products/service/manager/product_service_manager.dart';
import 'package:architecture_template/core/constants/api_contants.dart';
import 'package:vexana/vexana.dart';

final class LoginServiceManager {
  final ProductServiceManager _productServiceManager;

  LoginServiceManager(this._productServiceManager);

  Future<List<User>> users() async {
    final response = await _productServiceManager.send<User, List<User>>(
      ApiConstants.login,
      parseModel: const User(),
      method: RequestType.GET,
    );
    return response.data ?? [];
  }
}
