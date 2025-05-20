import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/products/init/application_initialize.dart';
import 'package:architecture_template/products/init/product_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationInitialize.make();
  runApp(
    ProductLocalization(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomeView(),
    );
  }
}
