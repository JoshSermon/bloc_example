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
// When a `ThemeToggled` event is received, the bloc toggles the theme between light and dark modes.
// The initial state of the theme is set to `ThemeMode.light`.
// The `ThemeEvent` class is imported
// from the `theme_event.dart` file, which defines the events related to theme management.
