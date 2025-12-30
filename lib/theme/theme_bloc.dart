import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    on<ThemeToggled>((event, emit) {
      emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
    });
  }
}

// This file contains the BLoC implementation for managing theme state.
// The `ThemeBloc` class extends `Bloc` and manages the theme state based on the `ThemeMode` enum.
// The `on` method is used to define the event handling logic for the `ThemeToggled` event.
// When the `ThemeToggled` event is dispatched, the current theme state is toggled between `ThemeMode.light` and `ThemeMode.dark`.
// The `emit` method is used to update the theme state in response to the event.
// The initial state of the theme is set to `ThemeMode.light`.
