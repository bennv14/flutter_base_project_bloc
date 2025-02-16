import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  bool get isLoading;

  BaseState copyWith({
    bool? isLoading,
  });
}