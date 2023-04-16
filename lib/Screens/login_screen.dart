import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// hint meme use SvgPicture.asset('filePath') when using the picture
// bc it's svg so Image.asset('filePath') won't work

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final _auth = ref.watch(authenticationProvider);
    Future<void> _loginWithGoogle() async {
            const CircularProgressIndicator();
            await _auth
                .signInWithGoogle(context)
                .whenComplete(() => _auth.authStateChange.listen((event) async {
                      if (event == null) {
                        const CircularProgressIndicator();
                        return;
                      }
                    }));
          }
    return Container(
      child: ElevatedButton(onPressed: (){
        _loginWithGoogle();
      },
      child: FaIcon(FontAwesomeIcons.google),),
    );
    
  }

  
}