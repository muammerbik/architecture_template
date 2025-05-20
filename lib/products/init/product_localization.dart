import 'package:architecture_template/products/utility/enums/locals.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// App language Class.
class ProductLocalization extends EasyLocalization {
  
  ProductLocalization({
    required super.child,
  }) : super(supportedLocales: _supportedLocales, path: _translationPath);

  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
  static const String _translationPath = 'assets/translation';

  // Change language Function
  static Future<void> changeLanguage(
          {required Locales value, required BuildContext context,}) =>
      context.setLocale(value.locale);
}
