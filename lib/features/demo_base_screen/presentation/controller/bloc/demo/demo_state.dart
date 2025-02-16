part of 'demo_bloc.dart';

class DemoState extends BaseState {
  @override
  final bool isLoading;

  DemoState({
    this.isLoading = false,
  });

  @override
  DemoState copyWith({
    bool? isLoading,
  }) =>
      DemoState(
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  List<Object> get props => [
        isLoading,
      ];
}

final class HomeInitial extends DemoState {}
