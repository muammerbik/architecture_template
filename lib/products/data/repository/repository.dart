import 'package:architecture_template/core/error/exceptions.dart';
import 'package:architecture_template/core/error/failures.dart';
import 'package:architecture_template/products/data/model/user_model.dart';
import 'package:architecture_template/products/data/service/login/login_service_manager.dart';
import 'package:architecture_template/products/state/get_it/get_it.dart';
import 'package:architecture_template/products/utility/results.dart';

/// App Repository
final class Repository {
  final loginServiceManager = getIt.get<LoginServiceManager>();

  Future<Result<List<User>>> userRepository() async {
    try {
      final response = await loginServiceManager.users();
      return Success(response);
    } on ServerException catch (e) {
      return Error(ServerFailure(
        message: e.message,
        code: e.statusCode,
      ));
    } on CacheException catch (e) {
      return Error(CacheFailure(
        message: e.message,
      ));
    } catch (e) {
      return Error(ServerFailure(
        message: e.toString(),
      ));
    }
  }
}
