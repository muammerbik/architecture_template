import 'dart:async';
import 'package:architecture_template/products/init/config/app_enviranment.dart';
import 'package:architecture_template/products/init/config/env_dev.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

@immutable
final class ApplicationInitialize {
  const ApplicationInitialize._();

  static Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stack) {
        Logger().e(error);
      },
    );
  }

  static Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };
    AppEnvironment.setup(config: DevEnv());

    //depedency
   
  }
}
