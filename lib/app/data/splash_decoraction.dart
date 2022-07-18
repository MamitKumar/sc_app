  import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

BoxDecoration splashBackground() {
    return BoxDecoration(
        gradient: LinearGradient(colors: [
      ColorName.backgroundPrimary,
      ColorName.backgroundSecondry
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter));
  }
 