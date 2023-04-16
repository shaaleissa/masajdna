import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masajdna/Screens/home_screen.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'package:masajdna/screens/login_screen.dart';
import 'package:masajdna/widgets/loading_widget.dart';
import 'package:masajdna/widgets/error_widget.dart';

class AuthChecking extends ConsumerWidget{
  const AuthChecking({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return authState.when(
        data: (data) {
          if (data != null) return HomeScreen();
          return const LoginScreen();
        },
        loading: () => const Loading(),
        error: (e, trace) => Error(e, trace));
  }
  }
