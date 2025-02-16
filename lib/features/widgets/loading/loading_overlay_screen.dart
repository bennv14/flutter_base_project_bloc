import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/core/base/controller/base_state.dart';
import 'package:flutter_base_project_bloc/features/widgets/loading/overlay_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingOverlayScreen<B extends Bloc<dynamic, S>, S extends BaseState>
    extends StatelessWidget {
  const LoadingOverlayScreen({
    super.key,
    required this.selector,
  });

  final bool Function(S) selector;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, bool>(
      selector: selector,
      builder: (BuildContext context, bool state) {
        return OverlayLoading(
          isLoading: state,
        );
      },
    );
  }
}
