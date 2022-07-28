
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../data/offer_detail.dart';

class TasksAppOfferDetail extends StatefulWidget {
  const TasksAppOfferDetail({Key? key}) : super(key: key);

  @override
  State<TasksAppOfferDetail> createState() => _TasksAppOfferDetailState();
}

class _TasksAppOfferDetailState extends State<TasksAppOfferDetail> {
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
                    "Tasks (1/4)",
                    style: offerTask,
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
                child: readMore == true ? null : TaskDetail(),
              ),
            ],
          ),
        ),
        Divider(
          color: ColorName.appsubtitlegrey,
          endIndent: 0,
          indent: 0,
        ),
      ],
    );
  }
}

Widget TaskDetail() {
  bool isCompleted;
  return Column(
    children: [
      TaskDetailWidget(
        isCompleted: isCompleted=true,
        balance: 23,
        taskSubHeading: 'Install the application Sign Up with a new account.',
        taskHeading: '1.  Install the application',
      ),
      TaskDetailWidget(
        isCompleted: isCompleted=false,
        balance: 73,
        taskSubHeading: 'After sign up, complete one task successfully',
        taskHeading: '2.  Complete one task',
      ),
      TaskDetailWidget(
        isCompleted: isCompleted=false,
        balance: 56,
        taskSubHeading: 'Share Cashoji to one of your friend. After a successful refer you will get reward.',
        taskHeading: '3.  Refer to 1 Friend',
      ),
    ],
  );
}

class TaskDetailWidget extends StatelessWidget {
  const TaskDetailWidget({
    Key? key,
    required this.isCompleted,
    required this.taskHeading,
    required this.taskSubHeading,
    required this.balance,

  }) : super(key: key);

  final bool isCompleted;
  final String taskHeading;
  final String taskSubHeading;
  final int balance;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Task One
        Padding(
          padding: EdgeInsets.only(top: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                taskHeading,
                style: isCompleted==true ? offerTaskHeadingTrue :offerTaskHeadingFalse,
              ),
              Container(
                decoration: isCompleted == true
                    ? BoxDecoration(
                  borderRadius: BorderRadius.circular(24.sp),
                  color: ColorName.buttongreen,
                )
                    : BoxDecoration(
                  borderRadius: BorderRadius.circular(24.sp),
                  color: ColorName.buttongrey,
                ),
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 7.sp, horizontal: 16.sp),
                  child: Text(
                    "₹ $balance",
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.sp, left: 21.sp,right: 96.sp),
          child: Text(
              taskSubHeading,
              style:isCompleted == true ? offerTaskSubHeadingTrue:offerTaskSubHeadingFalse,
          ),
        ),
      ],
    );
  }
}
