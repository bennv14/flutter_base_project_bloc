import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/core/base/controller/base_state.dart';
import 'package:flutter_base_project_bloc/features/widgets/loading/base_loading_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class StatelessScreen<B extends Bloc<E, S>, E, S extends BaseState>
    extends StatelessWidget implements AutoRouteWrapper {
  const StatelessScreen({
    super.key,
  });

  B builder(BuildContext context);

  @override
  Widget build(BuildContext context);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<B>(
      create: builder,
      child: Stack(
        children: [
          this,
          Builder(
            builder: (context) {
              return BlocSelector<B, S, bool>(
                selector: (state) => state.isLoading,
                builder: (BuildContext context, bool state) {
                  return BaseLoadingScreen(
                    isLoading: state,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
