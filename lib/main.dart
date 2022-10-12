import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  backgroundColor: Color(0xeeff4e17),
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.transparent))),
            translationsKeys: AppTranslation.translations,
            locale: const Locale(
                'zh', 'CN'), // translations will be displayed in that locale
            fallbackLocale: const Locale('en',
                'US'), // specify the fallback locale in case an invalid locale is selected.
          );
        });
  }
}
