part of 'demo_bloc.dart';

class DemoEvent {
  const DemoEvent();
  factory DemoEvent.loading() = _Loading;
}

class _Loading extends DemoEvent {
  _Loading();
}
