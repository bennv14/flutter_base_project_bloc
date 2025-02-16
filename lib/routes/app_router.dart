import 'package:auto_route/auto_route.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/presentation/screens/demo_stateful_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  AppRouter({
    required super.navigatorKey,
  });

  @override
  List<AutoRoute> get routes => [
      ];
}
