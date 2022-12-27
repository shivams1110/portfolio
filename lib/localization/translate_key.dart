import 'package:portfolio/localization/app_localization.dart';

class TranslateKey {
  static String translate(key) => AppLocalizations.instance.translate(key);

  static String get developer => translate('developer');
  static String get myName => translate('myName');
  static String get contactMe => translate('contactMe');
  static String get aboutMe => translate('aboutMe');


}
