import 'package:bloc/bloc.dart';
import 'package:flutter_base_project_bloc/core/base/controller/base_state.dart';

part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  DemoBloc() : super(DemoState()) {
    on<_Loading>(_onLoading);
  }

  Future<void> _onLoading(_Loading event, Emitter<DemoState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
  }
}
