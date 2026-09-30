import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkount/core/theme/app_theme.dart';

void main() => runApp(const ProviderScope(child: LinkountApp()));

class LinkountApp extends StatelessWidget {
  const LinkountApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    home: Scaffold(body: Center(child: Text("Linkount"))),
  );
}
