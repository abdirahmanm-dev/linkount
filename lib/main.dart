import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkount/core/theme/app_theme.dart';
import 'package:linkount/providers/locale_provider.dart';
import 'package:linkount/providers/theme_provider.dart';

import 'core/l10n/app_localizations.dart';

void main() => runApp(const ProviderScope(child: LinkountApp()));

class LinkountApp extends ConsumerWidget {
  const LinkountApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final locale = ref.watch(localeProvider);

    return MaterialApp(
      locale: locale,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale("ar")],

      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Card(child: Text(AppLocalizations.of(context)!.appTitle)),

                    ElevatedButton(
                      onPressed: () => ref
                          .read(themeModeProvider.notifier)
                          .setMode(ThemeMode.dark),
                      child: Text(AppLocalizations.of(context)!.themeDark),
                    ),
                    ElevatedButton(
                      onPressed: () => ref
                          .read(themeModeProvider.notifier)
                          .setMode(ThemeMode.light),
                      child: Text(AppLocalizations.of(context)!.themeLight),
                    ),
                  ],
                ),

                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => ref
                          .read(localeProvider.notifier)
                          .setLocale(const Locale("en")),
                      child: Text(
                        AppLocalizations.of(context)!.languageEnglish,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () => ref
                          .read(localeProvider.notifier)
                          .setLocale(const Locale("ar")),
                      child: Text(AppLocalizations.of(context)!.languageArabic),
                    ),

                    ElevatedButton(
                      onPressed: () =>
                          ref.read(localeProvider.notifier).setLocale(null),
                      child: Text(AppLocalizations.of(context)!.languageSystem),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
