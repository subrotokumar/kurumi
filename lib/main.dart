import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/core/routes/app_router.dart';
import 'package:kurumi/provider/medialist.provider.dart';

final accessTokenProvider = StateProvider<String?>((ref) => null);
final clientProvider = StateProvider<Client?>((ref) => null);
final userId = StateProvider<int>((ref) => 0);
final mediaListClientProvider = StateProvider<Client?>((ref) => null);

final mediaListCollectionProvider =
    StateNotifierProvider<MediaListNotifier, MediaListCollectionData>(
  (ref) => MediaListNotifier(),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(router).router,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
