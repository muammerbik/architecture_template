import 'package:architecture_template/core/theme/custom_light_theme.dart';
import 'package:architecture_template/feature/home/bloc/home_bloc.dart';
import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/products/init/application_initialize.dart';
import 'package:architecture_template/products/init/product_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await ApplicationInitialize.make();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: ProductLocalization(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,

      /*    localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale, */
      home: const HomeView(),
    );
  }
}
