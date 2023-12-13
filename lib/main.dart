import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kencleng_flutter_mobile/common/style/app_theme.dart';
import 'package:kencleng_flutter_mobile/common/utils/logger_utils.dart';
import 'package:kencleng_flutter_mobile/common/utils/secure_storage_utils.dart';
import 'package:kencleng_flutter_mobile/core/lang/app_lang.dart';
import 'package:kencleng_flutter_mobile/core/route/app_pages.dart';
import 'package:kencleng_flutter_mobile/module/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var lang = await SecureStorageUtils.getLanguage();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  await initializeDateFormatting('id_ID', null).then(
    (_) => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splash,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        logWriterCallback: Logger.write,
        locale: (lang == null || lang == "id")
            ? const Locale("id", "ID")
            : const Locale("en", "US"),
        fallbackLocale: const Locale("id", "ID"),
        translationsKeys: AppTranslation.translationsKeys,
        home: const SplashScreen(),
      ),
    ),
  );
}
