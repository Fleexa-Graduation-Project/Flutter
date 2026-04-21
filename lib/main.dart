import 'package:fleexa/core/cubits/localization_cubit.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/service_locator.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'Features/overview/notifications/data/repos/notifications_repository.dart';
import 'Features/overview/notifications/presentation/manager/notifications_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();

  final directory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(directory.path),

    
  );

  runApp(const Fleexa());
}

class Fleexa extends StatelessWidget {
  const Fleexa({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalizationCubit>(
          create: (context) => LocalizationCubit(),
        ),
        BlocProvider(
          create: (context) =>
              NotificationsCubit(getIt<NotificationsRepository>())
                ..loadNotifications(),
        ),
      ],
      child: BlocBuilder<LocalizationCubit, Locale>(builder: (context, locale) {
        return ScreenUtilInit(
          designSize: const Size(430, 1060),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              locale: locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  elevation: 0,
                  backgroundColor: AppColors.jetBlack,
                  titleTextStyle: Styles.style24Medium,
                  iconTheme: const IconThemeData(color: AppColors.coolGray),
                ),
                scaffoldBackgroundColor: AppColors.jetBlack,
                primaryColor: AppColors.white,
                fontFamily:
                    const Locale('en').languageCode == 'ar' ? 'Rubik' : 'Rubik',
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              routerConfig: AppRouter.router,
            );
          },
        );
      }),
    );
  }
}
