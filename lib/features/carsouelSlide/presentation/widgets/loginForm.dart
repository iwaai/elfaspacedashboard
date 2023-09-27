import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customTextfields.dart';
import 'diffLoginButton.dart';
import 'logInButton.dart';

class logInForm extends StatefulWidget {
  const logInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<logInForm> createState() => _logInFormState();
}

class _logInFormState extends State<logInForm>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.81.h,
      child: Padding(
        padding: EdgeInsets.all(26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.arrow_back_ios),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Login as Customer',
              style: TextStyle(
                fontFamily: 'Monsterrat-Medium',
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                color: const Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.transparent,
                controller: _tabController,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14.sp,
                  color: const Color(0xff000000),
                ),
                unselectedLabelColor: Colors.grey.withOpacity(0.3),
                tabs: const [
                  Tab(
                    text: 'Email',
                  ),
                  Tab(
                    text: 'Phone Number',
                  ),
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.60.h,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      CutsomTextField(
                        controller: _emailController,
                        type: 'Email',
                        icon: Icons.person,
                        uppterType: 'Email',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CutsomTextField(
                        controller: _passwordController,
                        type: 'Password',
                        icon: Icons.visibility,
                        uppterType: 'Password',
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      LoginInButton(
                          heightt: 60,
                          widthh: 310,
                          text: 'Log in',
                          color: const Color(0xffB409CE),
                          ontap: () {}),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        children: [
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 70.w,
                            endIndent: 70.w,
                          ),
                          const Text('or'),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 70.w,
                            endIndent: 70.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      DiffLoginButton(
                        text: 'Continue with Google',
                        ontap: () {},
                        heightt: 60,
                        widthh: 310,
                        image: 'assets/icons/google.png',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DiffLoginButton(
                        text: 'Continue with Facebook',
                        ontap: () {},
                        heightt: 60,
                        widthh: 310,
                        image: 'assets/icons/facebook.png',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text('Forgot Password?',
                              style: TextStyle(
                                  fontFamily: 'Monsterrat-Medium',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: const Color(0xff000000)
                                      .withOpacity(0.7))),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text('Reset',
                              style: TextStyle(
                                  fontFamily: 'Monsterrat-Medium',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: Colors.blue))
                        ],
                      )
                    ],
                  )),
                  Container(
                    color: Colors.pink,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

AnimatedContainer dot(int index, int currentPage) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 5),
    height: 6,
    width: currentPage == index ? 12 : 6,
    decoration: BoxDecoration(
        color: currentPage == index ? const Color(0xffB409CE) : Colors.grey,
        borderRadius: BorderRadius.circular(3)),
    duration: const Duration(milliseconds: 200),
  );
}
