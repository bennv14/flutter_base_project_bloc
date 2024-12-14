import 'package:auto_route/auto_route.dart';
import 'package:flutter_base_project_bloc/features/details/presentation/details_screen.dart';
import 'package:flutter_base_project_bloc/features/home/presentation/home_screen.dart';
import 'package:flutter_base_project_bloc/features/login/presentation/login_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: DetailsRoute.page),
      ];
}
