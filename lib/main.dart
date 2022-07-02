import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'product/manager/connectivity_manager.dart';
import 'core/extensions/app_extensions.dart';
import 'features/common/splash/view/splash_view.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ConnectivityManager(),
          )
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String path = '/';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: NavigationRoute.generateRoute,
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: _theme(context),
      home: const SplashView(),
    );
  }

  ThemeData _theme(BuildContext context) => ThemeData(
        primaryColor: context.primaryColor,
        scaffoldBackgroundColor: context.background,
        fontFamily: "Avenir",
      );
}
