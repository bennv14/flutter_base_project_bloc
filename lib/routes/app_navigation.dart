import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' as widgets;
import 'package:flutter_base_project_bloc/routes/app_router.dart';

class N {
  static late AppRouter _appRouter;
  static AppRouter get appRouter => _appRouter;

  /// Initialize the app router with the given navigator key
  ///
  /// the navigator key is used to control the navigation flow of the app
  ///
  /// if no key is provided, a new one will be generated
  static void init({
    widgets.GlobalKey<widgets.NavigatorState>? navKey,
  }) {
    _appRouter = AppRouter(
      navigatorKey: navKey,
    );
  }

  /// Replaces the current screen with a new one
  /// 
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  static Future<T?> replace<T extends Object?>(
    PageRouteInfo<T> screen, {
    OnNavigationFailure? onFailure,
  }) {
    return _appRouter.replace(
      screen,
      onFailure: onFailure,
    );
  }

  /// Pushes a new screen on top of the current one
  /// 
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  static Future<dynamic> to<T>(
    PageRouteInfo<T> screen, {
    OnNavigationFailure? onFailure,
  }) {
    return _appRouter.push(
      screen,
      onFailure: onFailure,
    );
  }

  /// If [screen] is already on the stack, it will be pop until it
  /// and the new [screen] will be pushed
  /// If [screen] is not on the stack, it will be pushed
  /// 
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  static Future<dynamic> navigate<T>(
    PageRouteInfo<T> screen, {
    OnNavigationFailure? onFailure,
  }) {
    return _appRouter.navigate(
      screen,
      onFailure: onFailure,
    );
  }

  /// Pops until given [predicate], if it already exists in stack
  /// otherwise adds it to the stack (good for web Apps and to avoid duplicate entries).
  ///
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  static void popUntil<T>(
    widgets.RoutePredicate predicate, {
    bool scoped = true,
  }) {
    return _appRouter.popUntil(
      predicate,
      scoped: scoped,
    );
  }

  /// Pops the current screen
  ///
  /// This function is a wrapper around [_appRouter.back]
  /// and is expected to be used when you need to pop the current screen
  /// in the navigation stack.
  static void pop() {
    return _appRouter.back();
  }

  /// Returns the current [BuildContext]
  ///
  /// This function is a wrapper around [_appRouter.navigatorKey.currentContext]
  /// and is expected to be used when you need to access the current context
  /// of the app.
  ///
  /// The returned [BuildContext] is the current context of the app,
  /// which is the context of the top most screen in the navigation stack.
  static widgets.BuildContext get context =>
      _appRouter.navigatorKey.currentContext!;

  /// Shows a dialog
  ///
  /// The [builder] function is called with the current [BuildContext]
  /// and is expected to return a [Widget] that can be used
  /// as the content of the dialog.
  ///
  /// The [context] parameter is the current [BuildContext]
  ///
  /// The returned [Future] completes with the value that was passed to
  static Future<T?> showDialog<T>(
    Function(widgets.BuildContext context) builder,
  ) {
    return widgets.showDialog<T>(
      context: context,
      builder: (context) => builder(context),
    );
  }

  /// Show a bottom sheet
  ///
  /// This function is a wrapper around [showModalBottomSheet]
  /// to provide a more convenient API for the application.
  ///
  /// The [builder] function is called with the current [BuildContext]
  /// and is expected to return a [Widget] that can be used
  /// as the content of the bottom sheet.
  ///
  /// The returned [Future] completes with the value that was passed
  static Future<T?> showModalBottomSheet<T>(
    Function(widgets.BuildContext context) builder,
  ) {
    return widgets.showModalBottomSheet<T>(
      context: context,
      builder: (context) => builder(context),
    );
  }
}
