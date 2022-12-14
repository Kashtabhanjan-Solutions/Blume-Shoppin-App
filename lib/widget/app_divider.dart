import 'package:flutter/material.dart';

import '../constant/app_color.dart';

class AppDivider extends StatelessWidget {
  double? height;
  double? thickness;
  double? endIndent;
  double? indent;

   AppDivider({Key? key,this.height,this.endIndent,this.indent,this.thickness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColor.dividerColor,
      height: height,
      thickness: thickness ?? 1,
      endIndent: endIndent,
      indent: indent,
    );
  }
}
