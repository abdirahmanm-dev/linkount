import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkount/core/theme/app_theme.dart';

import 'core/l10n/app_localizations.dart';

void main() => runApp(const ProviderScope(child: LinkountApp()));

class LinkountApp extends StatelessWidget {
  const LinkountApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [Locale('en'), Locale("ar")],
    home: Builder(
      builder: (context) => Scaffold(
        body: Center(child: Text(AppLocalizations.of(context)!.appTitle)),
      ),
    ),
  );
}
