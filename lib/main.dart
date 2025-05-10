import 'package:desktop_updater/updater_controller.dart';
import 'package:desktop_updater/widget/update_direct_card.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DesktopUpdaterController _desktopUpdaterController;

  @override
  void initState() {
    super.initState();
    _desktopUpdaterController = DesktopUpdaterController(
      appArchiveUrl: Uri.parse(
        "https://github.com/sjgod1427/desktop_demo_updater/blob/main/app-archive.json",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text("Plugin example app")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Theme(
                data: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.blue,
                  ).copyWith(
                    onSurface: Theme.of(context).colorScheme.onSurface,
                    onSurfaceVariant:
                        Theme.of(context).colorScheme.onSurfaceVariant,
                    primary: Theme.of(context).colorScheme.primary,
                    surfaceContainerLowest:
                        Theme.of(context).colorScheme.surfaceContainerLowest,
                    surfaceContainerLow:
                        Theme.of(context).colorScheme.surfaceContainerLow,
                    surfaceContainerHighest:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                ),
                child: DesktopUpdateDirectCard(
                  controller: _desktopUpdaterController,
                  child: const Text("This is a child widget"),
                ),
              ),
              const Text("Running on: 1.0.0+3"),
              // Placeholder for platform version string
              const Text("Hello World! Updated\n"),
            ],
          ),
        ),
      ),
    );
  }
}
