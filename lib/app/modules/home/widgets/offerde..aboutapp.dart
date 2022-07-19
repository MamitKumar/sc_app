
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  bool readMore = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: ColorName.appsubtitlegrey,
          endIndent: 0,
          indent: 0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.sp, right: 27.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About application ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (readMore == false) {
                            readMore = true;
                          } else {
                            readMore = false;
                          }
                        });
                      },
                      icon: readMore == true
                          ? Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                        size: 30.sp,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.black,
                        size: 30.sp,
                      )),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                child: readMore == true ? null : AboutApplicationDetail(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget AboutApplicationDetail() {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 12.sp, bottom: 24.sp),
      child: Text(
        "You are Da Vinci’s most promising apprentice. Your master, Leonardo, has disappeared. You have no idea where he’s gone or what has happened. So you begin your quest, your search for the truth.",
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: ColorName.offertilesubtitlecolor,
        ),
      ),
    ),
  );
}

