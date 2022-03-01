import 'package:flutter/material.dart';

import 'widget/space_widget.dart';

extension SizedBoxExtension on BuildContext {
  Widget get emptySizedWidthBoxLow => const SpacerWidget(width: 0.01);
  Widget get emptySizedWidthBoxLow3x => const SpacerWidget(width: 0.03);
  Widget get emptySizedWidthBoxNormal => const SpacerWidget(width: 0.05);
  Widget get emptySizedWidthBoxHigh => const SpacerWidget(width: 0.1);

  Widget get emptySizedHeightBoxLow => const SpacerWidget(height: 0.01);
  Widget get emptySizedHeightBoxLow3x => const SpacerWidget(height: 0.03);
  Widget get emptySizedHeightBoxNormal => const SpacerWidget(height: 0.05);
  Widget get emptySizedHeightBoxHigh => const SpacerWidget(height: 0.1);
}

extension MediaQueryExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.03;
  double get mediumValue => height * 0.05;
  double get highValue => height * 0.1;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}
