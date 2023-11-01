import 'package:dil_destek/const/local_enum.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class Productlocalization extends EasyLocalization {
  Productlocalization({required super.child, super.key})
      : super(
            supportedLocales: _supportedLocales,
            path: _translationsPath,
            useOnlyLangCode: true);

  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale
  ];
  static final String _translationsPath = "assets/translations";

  static Future<void> updateLanguage(
          {required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}
