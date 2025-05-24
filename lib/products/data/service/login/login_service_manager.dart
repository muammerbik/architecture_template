import 'package:architecture_template/core/constants/api_constants.dart';
import 'package:architecture_template/products/data/service/manager/product_service_manager.dart';
import 'package:architecture_template/products/data/model/user_model.dart';
import 'package:vexana/vexana.dart';


///LoginServiceManager
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
