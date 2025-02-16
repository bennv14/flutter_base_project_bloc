import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/core/base/controller/base_state.dart';
import 'package:flutter_base_project_bloc/features/widgets/loading/base_loading_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class StatefulScreen<B extends Bloc<E, S>, E, S extends BaseState>
    extends StatefulWidget implements AutoRouteWrapper {
  const StatefulScreen({super.key});

  B builder(BuildContext context);

  @override
  State<StatefulScreen<B, E, S>> createState();

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
