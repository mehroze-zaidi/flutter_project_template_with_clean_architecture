import 'package:fedman_admin_app/core/common_widgets/responsive_navigation_wrapper.dart';
import 'package:fedman_admin_app/core/navigation/route_name.dart';
import 'package:fedman_admin_app/presentation/account/screens/login_screen.dart';
import 'package:fedman_admin_app/presentation/account/screens/splash_screen.dart';
import 'package:fedman_admin_app/presentation/disciplines/screens/disciplines_screen.dart';
import 'package:fedman_admin_app/presentation/events/screens/events_screen.dart';
import 'package:fedman_admin_app/presentation/federations/screens/add_federation_screen.dart';
import 'package:fedman_admin_app/presentation/federations/screens/federations_screen.dart';
import 'package:fedman_admin_app/presentation/home/home_screen.dart';
import 'package:fedman_admin_app/presentation/judges/screens/judges_screen.dart';
import 'package:fedman_admin_app/presentation/rankings/screens/rankings_screen.dart';
import 'package:fedman_admin_app/presentation/reports/screens/reports_screen.dart';
import 'package:fedman_admin_app/presentation/users/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/account/data/repositories/local/local_auth_repo.dart';

class AppRoutes {
  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: RouteName.login,
    redirect: (context, state) {
      final localAuthRepo = GetIt.I<LocalAuthRepository>();
      final isLoggedIn = localAuthRepo.isLoggedIn();
      final isFirstTime = localAuthRepo.isFirstTimeLaunch();
      final currentLocation = state.matchedLocation;

      // Handle initial navigation
      if (currentLocation == RouteName.login) {
        if (isFirstTime) {
          return RouteName.login;
        } else if (isLoggedIn) {
          return RouteName.home;
        } else {
          return null;
        }
      }

      if(!isLoggedIn){
        return RouteName.login;
      }

      return null; // No redirect needed
    },
    routes: [
      // Onboarding routes
      GoRoute(
        path: RouteName.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // Auth routes
      GoRoute(
        path: RouteName.login,
        builder: (context, state) => const LoginScreen(),
      ),

      // Shell route with navigation wrapper
      ShellRoute(
        builder: (context, state, child) {
          return ResponsiveNavigationWrapper(child: child);
        },
        routes: [
          GoRoute(
            path: RouteName.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: RouteName.federations,
            builder: (context, state) => const FederationsScreen(),
          ),

          GoRoute(
            path: RouteName.addFederation,
            builder: (context, state) => const AddFederationScreen(),
          ),
          GoRoute(
            path: RouteName.disciplines,
            builder: (context, state) => const DisciplinesScreen(),
          ),
          GoRoute(
            path: RouteName.events,
            builder: (context, state) => const EventsScreen(),
          ),
          GoRoute(
            path: RouteName.judges,
            builder: (context, state) => const JudgesScreen(),
          ),
          GoRoute(
            path: RouteName.rankings,
            builder: (context, state) => const RankingsScreen(),
          ),
          GoRoute(
            path: RouteName.users,
            builder: (context, state) => const UserAdministrationsScreen(),
          ),
          GoRoute(
            path: RouteName.reports,
            builder: (context, state) => const ReportsScreen(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Error: ${state.error}'))),
  );

  // Helper method to check if route is an auth route

  // Helper method to check if route is protected (requires authentication)
  static bool _isProtectedRoute(String location) {
    const protectedRoutes = [
      RouteName.home,

      // profileCompletion, // Removed - users need access during registration flow
    ];
    return protectedRoutes.contains(location);
  }
}
