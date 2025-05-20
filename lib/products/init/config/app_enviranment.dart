import 'package:architecture_template/products/init/config/app_configuration.dart';
/// Project AppEnvironment manager class
final class AppEnvironment {

  ///Config Func
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  static late final AppConfiguration _config;
/// App baseUrl
  static String get baseUrl => _config.baseUrl;

  ///App apiKey
  static String get apiKey => _config.apiKey;
}
