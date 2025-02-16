import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/presentation/controller/bloc/demo/demo_bloc.dart';
import 'package:flutter_base_project_bloc/features/widgets/screens/stateful_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DemoStatefulScreen
    extends StatefulScreen<DemoBloc, DemoEvent, DemoState> {
  const DemoStatefulScreen({super.key});

  @override
  State<DemoStatefulScreen> createState() => _DemoStatefulScreenState();

  @override
  DemoBloc builder(BuildContext context) {
    return DemoBloc();
  }
}

class _DemoStatefulScreenState extends State<DemoStatefulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoStatefulScreen'),
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
}
