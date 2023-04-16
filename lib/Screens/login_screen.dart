import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// hint meme use SvgPicture.asset('filePath') when using the picture
// bc it's svg so Image.asset('filePath') won't work

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool _isLoading = false;

  void loading() {
    if (mounted) {
      setState(() {
        _isLoading = !_isLoading;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authenticationProvider);
    Future<void> _loginWithGoogle() async {
      loading();
      await auth
          .signInWithGoogle(context)
          .whenComplete(() => auth.authStateChange.listen((event) async {
                if (event == null) {
                  loading();
                  return;
                }
              }));
    }

    return Container(
      child: _isLoading
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                _loginWithGoogle();
              },
              child: FaIcon(FontAwesomeIcons.google),
            ),
    );
  }
}
