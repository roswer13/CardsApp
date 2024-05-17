import 'package:cards_app/src/locator.dart';
import 'package:cards_app/src/presentation/home.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  runApp(const Home());
}
