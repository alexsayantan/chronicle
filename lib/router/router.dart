import 'package:chronicle/router/routes.dart';
import 'package:chronicle/screens/setting.dart';
import 'package:go_router/go_router.dart';
import '../layouts/layout_scaffold.dart';
import 'package:flutter/material.dart';
import '../screens/explore.dart';
import '../screens/home.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.homePage,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => LayoutScaffold(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.homePage,
              builder: (context, state) => const Home(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.explorePage,
              builder: (context, state) => const Explore(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.settingsPage,
              builder: (context, state) => const Setting(),
            ),
          ],
        ),
      ],
    ),
  ],
);