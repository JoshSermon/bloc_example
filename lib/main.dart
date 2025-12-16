import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme/theme_bloc.dart';
import 'theme/theme_event.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp(
          themeMode: themeMode,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Theme Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<ThemeBloc>().add(ThemeToggled());
          },
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
