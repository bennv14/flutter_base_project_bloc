import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/presentation/controller/bloc/demo/demo_bloc.dart';
import 'package:flutter_base_project_bloc/features/widgets/screens/stateless_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoStatelessScreen
    extends StatelessScreen<DemoBloc, DemoEvent, DemoState> {
  const DemoStatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoStatelessScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => context.read<DemoBloc>().add(
                    DemoEvent.loading(),
                  ),
              child: const Text('Loading'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  DemoBloc builder(BuildContext context) {
    return DemoBloc();
  }
}
