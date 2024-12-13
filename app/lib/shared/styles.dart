import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Common Colors
const beyondColor = Color(0xFF153346);
const textGreen = Color(0xFf41A702);
const hoverCover = Colors.lightBlue;

// Common Sizes
double get subText => 30.sp.clamp(18, 30);
double get welcomeText => 15.sp.clamp(8, 15);
double get inputText => 18.sp.clamp(8, 18);
double get menuText => 20.sp.clamp(18, 20);

double get buttonWidth => 200.w.clamp(90, 200);
double get buttonHeight => 40.h.clamp(20, 40);

double get inputBarWidth => 640.w.clamp(90, 640);
double get inputBarHeight => 60.h.clamp(20, 60);