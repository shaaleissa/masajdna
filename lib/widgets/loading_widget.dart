import 'package:flutter/material.dart';
import 'package:masajdna/constants/colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: MyColors.white,
        child: const Center(child: CircularProgressIndicator()));
  }
}
