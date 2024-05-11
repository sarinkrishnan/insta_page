import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:seclob_cyber/models/models.dart';
import 'package:seclob_cyber/models/userdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ModelClass? data;
  @override
  void initState() {
    userDataOne();
    super.initState();
  }

  userDataOne() async {
    data = await getUserData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        child: Container(
          width: double.infinity.w,
          height: 62.h,
          child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: Color(0xff1E2E5D),
              indicatorColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/home.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/search.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/camara.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/play.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 17.h),
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/images/dp.png',
                          height: 23.h,
                          width: 23.w,
                        ),
                        Gap(5.h),
                        Icon(
                          Icons.maximize,
                          color: Colors.white,
                          size: 12.sp,
                        )
                      ],
                    ),
                  ),
                  label: '--',
                ),
              ]),
        ),
      ),
      appBar: AppBar(
        leading: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Image.asset(
              'asset/images/image_1.png',
              height: 32,
              width: 32,
            ),
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Image.asset(
                'asset/images/image_2.png',
                height: 32,
                width: 32,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(42.r),
                        child: Image.network(
                          data!.media!.first.profilePic.toString(),
                          
                         
                          height: 86,
                          width: 86,
                        ),
                      ),
                      Post_Followers(
                        post_number: '50',
                        post1: 'Post',
                      ),
                      Post_Followers(
                        post_number: '564',
                        post1: 'Follower',
                      ),
                      Post_Followers(
                        post_number: '564',
                        post1: 'Following',
                      )
                    ],
                  ),
                  Gap(6.h),
                  Text(
                    'Rayan Moon',
                    style: TextStyle(
                        color: Color(0xff1E3167),
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Photographer',
                    style: TextStyle(
                        color: Color(0xff1E3167),
                        fontFamily: 'poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '🌟 You are beautiful, and\nI"m here to capture it! 🌟',
                    style: TextStyle(
                        color: Color(0xff1E3167),
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Gap(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtons(
                        colors: Color(0xff184AC0),
                        text: 'Edit profile',
                      ),
                      TextButtons(
                        colors: Color(0xff28426B),
                        text: 'Wallet',
                      ),
                      Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(196, 24, 74, 192),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: Image.asset(
                            'asset/images/call.png',
                            height: 14.h,
                            width: 14.w,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(10, 56, 55, 55),
            ),
            Padding(
              padding: EdgeInsets.only(left: 77.w, right: 78.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photos',
                    style: TextStyle(
                        color: Color(0xffA7ACD0),
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 18.h,
                    width: 1.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(92, 167, 172, 208),
                        borderRadius: BorderRadius.circular(2.r)),
                  ),
                  Text(
                    'Videos',
                    style: TextStyle(
                        color: Color(0xffA7ACD0),
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(10, 56, 55, 55),
            ),
            data == null
                ? CircularProgressIndicator(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  )
                : Padding(
                    padding:
                        EdgeInsets.only(left: 5.w, right: 6.w, bottom: 10.h),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15.w,
                          mainAxisSpacing: 15.h),
                      itemBuilder: (context, index) {
                        return Container(
                          clipBehavior: Clip.hardEdge,
                          child: Center(
                            child: Stack(
                              children: [
                                Image.network(
                                  data!.media![index].filePath.toString(),
                                  fit: BoxFit.cover, height: 160.h,
                          width: 122.w,
                                ),
                                Positioned(
                                  top: 80.h,
                                  left: 32.w,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/love.png',
                                            width: 17.w,
                                            height: 15.h,
                                          ),
                                          Gap(2.h),
                                          Text(data!.media![index].likeCount
                                              .toString())
                                        ],
                                      ),
                                      Gap(20.w),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/comment.png',
                                            width: 17.w,
                                            height: 15.h,
                                          ),
                                          Gap(2.h),
                                          Text(data!.media![index].commentCount
                                              .toString())
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          height: 160.h,
                          width: 122.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        );
                      },
                      itemCount: data!.media!.length,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class TextButtons extends StatelessWidget {
  const TextButtons({
    super.key,
    required this.text,
    required this.colors,
  });
  final String text;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 145.w,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: colors,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r))),
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'poppins',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}

class Post_Followers extends StatelessWidget {
  const Post_Followers({
    super.key,
    required this.post1,
    required this.post_number,
  });
  final String post1;
  final String post_number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          post_number,
          style: TextStyle(
              color: Color(0xff1E3167),
              fontFamily: 'poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500),
        ),
        Text(
          post1,
          style: TextStyle(
              color: Color(0xff1E3167),
              fontFamily: 'poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
