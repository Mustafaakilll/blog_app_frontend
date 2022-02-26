import 'package:flutter/material.dart';

import '../widget_extension.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * (width ?? 0),
      height: context.height * (height ?? 0),
    );
  }
}
