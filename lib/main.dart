import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/routing/app_router.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/theme/app_theme.dart';
import 'package:vms_driver/core/app/bloc/snackbar/snackbar_bloc.dart';
import 'package:vms_driver/core/widgets/custom_error_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SnackbarBloc(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'VMS Driver',
            theme: AppTheme.lightTheme,
            initialRoute: AppRoutes.splash,
            onGenerateRoute: AppRouter.onGenerateRoute,
            builder: (context, child) {
              return Stack(children: [child!, const SnackbarOverlay()]);
            },
          );
        },
      ),
    );
  }
}
