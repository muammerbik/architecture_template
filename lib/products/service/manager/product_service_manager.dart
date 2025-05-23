import 'dart:io';

import 'package:architecture_template/products/init/config/app_enviranment.dart';
import 'package:flutter/services.dart';
import 'package:vexana/vexana.dart';

///ProductServiceManager
class ProductServiceManager extends NetworkManager<EmptyModel> {
  ProductServiceManager.base()
      : super(
          options: BaseOptions(baseUrl: AppEnvironment.baseUrl),
        );

  ///listenErrorState
  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(error);
        },
      ),
    );
  }
}
