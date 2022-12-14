import 'package:flutter/material.dart';

import '../constant/app_color.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer
      ),
    );
  }
}
