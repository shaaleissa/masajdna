import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masajdna/constants/colors.dart';
import 'package:masajdna/providers/auth_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masajdna/widgets/loading_widget.dart';


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
    Future<void> _loginAnonymously() async {
      loading();
      await auth
          .signInAsGuest(context)
          .whenComplete(() => auth.authStateChange.listen((event) async {
                if (event == null) {
                  loading();
                  return;
                }
              }));
    }

    return Container(
      child: _isLoading
          ? const Loading()
          : Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/logo.png', width: 400, height: 400,),
                      const SizedBox(height: 50,),
                      Text('أهلًا بكم في مسجدنا',
                      style: GoogleFonts.tajawal(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: MyColors.green,
                      ),),
                      const SizedBox(height: 50,),
                      ElevatedButton(
                          onPressed: () {
                            _loginWithGoogle();
                          },
                          child: const FaIcon(FontAwesomeIcons.google,size: 35,),
                          style: ElevatedButton.styleFrom(
                            primary: MyColors.paige,
                            onPrimary: MyColors.green,
                            minimumSize: const Size(200, 50),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){
                          _loginAnonymously();
                
                        },
                        style: ElevatedButton.styleFrom(
                            primary: MyColors.paige,
                            onPrimary: MyColors.green,
                            minimumSize: const Size(200, 50),
                          ), child:  Text('أو أكمل كضيف', 
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors.orange,
                        ),
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
