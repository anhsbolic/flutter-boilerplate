import 'package:kencleng_flutter_mobile/core/lang/common/en.dart';
import 'package:kencleng_flutter_mobile/core/lang/common/id.dart';
import 'package:kencleng_flutter_mobile/core/lang/module/onboarding/en.dart';
import 'package:kencleng_flutter_mobile/core/lang/module/onboarding/id.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "id_ID": idID,
    "en_US": enUS,
  };
}

final Map<String, String> idID = {
  ...commonID,
  ...onboardingID,
};

final Map<String, String> enUS = {
  ...commonEN,
  ...onboardingEN,
};
