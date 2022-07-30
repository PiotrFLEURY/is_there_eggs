import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:is_there_eggs/presentation/home/home.dart';
import 'package:is_there_eggs/presentation/splash/splash.dart';

class IsThereEgg extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            MaterialPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const Splash(),
        ),
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            MaterialPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const Home(),
        ),
      ),
    ],
  );

  IsThereEgg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Is There Eggs?',
      //darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffF46036),
          primary: const Color(0xffF46036),
          secondary: const Color(0xff2E294E),
          tertiary: const Color(0xff17BEBB),
          error: const Color(0xffFFE1A8),
          background: const Color(0xffE0D68A),
        ),
      ),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
