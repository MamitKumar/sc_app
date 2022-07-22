import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../routes/app_pages.dart';
import '../../widgets/appbar.dart';
import '../controllers/daily_rewards_controller.dart';
import '../widgets/dailly_reward_item_design.dart';
import '../widgets/daily_reward_appbar.dart';
import '../widgets/daily_reward_card_gift.dart';

class DailyRewardsView extends GetView<DailyRewardsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DailyRewardAppBar(),
        DailyRewardCardGift(),
        // TabBarCustum(),
        Padding(
          padding:  EdgeInsets.only(top: 24.sp,left: 22.sp),
          child: Row(
                children: [
                  InkWell(
                      onTap: () {
                     
                      },
                      child: Text(
                        "Daily Rewards",
                        style: TextStyle(
                            color: ColorName.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      )),
                      SizedBox(width: 42.sp,),
                   InkWell(
                      onTap: () {
                     
                      },
                      child: Text(
                        "Refer & Earn",
                        style: TextStyle(
                            color: ColorName.dailrewardbuttongrey,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
        ),

        DailyRewardStep(
          stepNum: "Step #1",
          stepDiscripction: "Invite your friends to Simple Cash using your refferal code",
        ),
        DailyRewardStep(
          stepNum: "Step #2",
          stepDiscripction: "Your friends sign up on Easy Cash",
        ),
        DailyRewardStep(
          stepNum: "Step #3",
          stepDiscripction: "When your friend will complete 5 offer then you will get  ₹10",
        ),
        // ListView.builder(itemBuilder: (context,indux)=>
        // DailyRewardTileDesign(
        //   reward: controller.dailyRewardList[indux],),
        //   itemCount: controller.dailyRewardList.length,
        //   shrinkWrap: true,
        // ),
        
      ],
    ));
  }
}

class DailyRewardStep extends StatelessWidget {
  const DailyRewardStep({
    Key? key, required this.stepNum, required this.stepDiscripction,
  }) : super(key: key);
  final String stepNum;
  final String stepDiscripction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
    Padding(
      padding: EdgeInsets.only(top: 29.sp,left: 22.sp),
      child: Text(stepNum,style: TextStyle(
        fontSize: 16,fontWeight: FontWeight.w500,color: ColorName.buttonOther
      ),),
    ),
    Padding(
     padding: EdgeInsets.only(top: 2.sp,left: 22.sp,right: 22.sp,bottom: 16.sp),
      child: Text(stepDiscripction,style: TextStyle(
        fontSize: 16,fontWeight: FontWeight.w400,color: ColorName.black
      ),),
    ),
    Divider( color: ColorName.taskSubtitleGrey,),
      ],
    );
  }
}

class TabBarCustum extends StatefulWidget {
  const TabBarCustum({Key? key}) : super(key: key);

  @override
  State<TabBarCustum> createState() => _TabBarCustumState();
}

class _TabBarCustumState extends State<TabBarCustum> {
  @override
   bool isClick=false;
   bool isRefer=false;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                         isClick=true;
                      });
                    },
                    child: Text(
                      "Daily Rewards",
                      style: TextStyle(
                          color: ColorName.black,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isRefer=true;
                      });
                    },
                    child: Text(
                      "Refer & Earn",
                      style: TextStyle(
                          color: ColorName.offfeButton,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
             if (isClick==true) ReferEarn() else if (isRefer==true) Refer() ,
      ],
    );
  }
}

Widget ReferEarn(){
  return Container(
    child: Text("fdfsdf"),
  );
}
Widget Refer(){
  return Container(
    child: Text("fdfsddlkfjkfdjkldsjlkjf"),
  );
}