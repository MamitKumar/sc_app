import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

final offerTileContainer= BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white,ColorName.white, Colors.white10],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                border: Border.all(color: ColorName.buttonOther),
                borderRadius: BorderRadius.circular(13.sp));

final offerTileTitle=TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600);

final offerTileSub=TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500);
final offerTileButton=BoxDecoration(
                              borderRadius: BorderRadius.circular(6.sp),
                              color: ColorName.buttonOther,
                            );
                          
                          final offerTileUserDec=TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500);
