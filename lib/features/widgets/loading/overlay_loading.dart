import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/features/widgets/loading/base_loading.dart';

class OverlayLoading extends StatelessWidget {
  const OverlayLoading({super.key, this.isLoading = false});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? PopScope(
            canPop: false,
            child: BaseLoading(
              isLoading: isLoading,
            ),
          )
        : const SizedBox();
  }
}
