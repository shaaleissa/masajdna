import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masajdna/Screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:masajdna/auth/auth_checking.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(
    child: MyApp()
    ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final initialize = ref.watch(firebaseinitializerProvider);
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.tajawalTextTheme(
          Theme.of(context).textTheme,
        ),
        canvasColor: MyColors.white
      ),
      home: initialize.when(
        data: (data) => const AuthChecking(),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => const Center(child: Text('Error')),
      ),
    );
  }
}
