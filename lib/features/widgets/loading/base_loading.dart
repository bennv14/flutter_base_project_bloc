import 'package:flutter/material.dart';

class BaseLoading extends StatelessWidget {
  const BaseLoading({
    super.key,
    this.isLoading = false,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : const SizedBox();
  }
}
