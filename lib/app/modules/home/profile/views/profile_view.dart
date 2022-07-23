import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

import '../../../../../gen/assets.gen.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(children: [
        Positioned(
            right: 0,
            top: 0,
            child: Assets.backgroundimageofferdetail.image(
              width: 474.sp,
              height: 572.sp,
            ),),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding:  EdgeInsets.only(top: 40.sp,left: 15.sp),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                        Get.back();
                    }, icon:  Icon(Icons.arrow_back),),
                      Text("Profile",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                     ),),
                  ],
                ),
              ),
             Padding(
               padding:  EdgeInsets.only(top:28.sp),
               child: Align(
                alignment: Alignment.center,
                 child: CircleAvatar(
                  radius: 69.sp,
                  backgroundImage: const CachedNetworkImageProvider('https://images.unsplash.com/photo-1655720408861-8b04c0724fd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2232&q=80'),
                 ),
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(top:20.sp,bottom: 2.sp), 
               child: Align(
                     alignment: Alignment.center,
                child: Text("Shubham Kumar",style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),)),
             ),
             Padding(
               padding:  EdgeInsets.only(bottom: 29.sp),
               child: Align(
                alignment: Alignment.center,
                child: Text("shubhamkumar34@gmail.com",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),)),
             ),
              // ignore: prefer_const_constructors
              Divider(
                color: ColorName.buttongrey,
              ),
              InkWell(
                onTap: (){

                },
                child: const AppUsage(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
              InkWell(
                onTap: (){

                },
                child: const Support(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
                InkWell(
                onTap: (){

                },
                child: const TermsConditions(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
                InkWell(
                onTap: (){

                },
                child: const PrivacyPolicy(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
                InkWell(
                onTap: (){

                },
                child: const RateUs(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
                InkWell(
                onTap: (){

                },
                child: const Language(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),
              InkWell(
                onTap: (){

                },
                child: const Logout(),),
                 const Divider(
                color: ColorName.buttongrey,
              ),

              
              Padding(
                padding: EdgeInsets.only(top: 9.sp,bottom: 10.sp),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Follow us",style: TextStyle(fontSize: 14.sp),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20.sp,
                    backgroundImage: CachedNetworkImageProvider('https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_1280.png'),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 23.sp,right: 23.sp),
                    child: CircleAvatar(
                      radius: 20.sp,
                      backgroundImage: CachedNetworkImageProvider('https://cdn.pixabay.com/photo/2016/12/04/18/58/instagram-1882330_1280.png'),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.sp,
                    backgroundImage: CachedNetworkImageProvider('https://cdn.pixabay.com/photo/2016/08/27/03/02/youtube-1623577_1280.png'),
                  )
                ],
              )
          ],
        )
      ]),
    );
  }
}

class AppUsage extends StatelessWidget {
  const AppUsage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.appUsage.image(
         width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("App Usage",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Assets.arrowright.image(
            height: 10.sp,
            width: 6.sp
          ),
      ]),
    );
  }
}

class Support extends StatelessWidget {
  const Support ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
           padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.support.image(
          width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Support",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Assets.shareicon.image(
            height: 15.sp,
            width: 15.sp
          ),
      ]),
    );
  }
}

class TermsConditions extends StatelessWidget {
  const TermsConditions ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
           padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row (children: [ Assets.termsConditions.image(
        width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Terms & Conditions",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Assets.shareicon.image(
            height: 15.sp,
            width: 15.sp
          ),
      ]
      ),
    );
  }
}
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.privacyPolicy.image(
          width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Privacy Policy",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Assets.shareicon.image(
            height: 15.sp,
            width: 15.sp
          ),
      ]),
    );
  }
}
class RateUs extends StatelessWidget {
  const RateUs ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.rateUs.image(
          width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Rate Us",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Assets.arrowright.image(
            height: 10.sp,
            width: 6.sp
          ),
      ]),
    );
  }
}
class Language extends StatelessWidget {
  const Language ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
             padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.language.image(
          width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Language",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        const Spacer(),
          Text("ENG",style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),)
      ]),
    );
  }
}
class Logout extends StatelessWidget {
  const Logout ({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
             padding:  EdgeInsets.only(top: 9.sp,right: 29.sp,left: 24.sp,bottom: 9.sp),
      child: Row(children: [
        Assets.logout.image(
          width: 25.sp,
          height: 20.sp,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 16.sp),
          child: Text("Logout",style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),),
        ),
        
      ]),
    );
  }
}