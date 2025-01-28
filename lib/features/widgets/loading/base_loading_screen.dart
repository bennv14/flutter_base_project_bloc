import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/features/widgets/loading/base_loading.dart';

class BaseLoadingScreen extends StatelessWidget {
  const BaseLoadingScreen({super.key, this.isLoading = false});

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
