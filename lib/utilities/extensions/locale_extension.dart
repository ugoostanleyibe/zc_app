import 'package:flutter/widgets.dart';
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/services/app_services/localization_service.dart';

extension LocaleExtension on Locale {
  String getLanguageName() {
    String localeName = toString();
    if (toString().trim() == '') {
      localeName = LocalizationService().appLocale.toString();
    }

    switch (localeName) {
      case 'en_US':
        return EnglishUS;
      case 'de_DE':
        return DeutschDE;
      case 'ar_SA':
        return ArabicSA;
      case 'zh_HK':
        return Mandarin;
      default:
        return LocalizationService().appLocale.toString();
    }
  }
}
