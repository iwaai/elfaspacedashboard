import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customTextfields.dart';
import 'diffLoginButton.dart';
import 'logInButton.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => SignInFormState();
}

class SignInFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.55.h,
        child: Padding(
          padding: EdgeInsets.all(26.h),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to our Terms\n of Service & Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[700], fontSize: 14.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _nameController,
                  type: 'Username',
                  icon: Icons.person_2,
                  uppterType: 'Username',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _emailController,
                  type: 'Email Address',
                  icon: Icons.visibility,
                  uppterType: 'Email Address',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _phoneNumController,
                  type: 'Phone Number',
                  icon: Icons.phone_android,
                  uppterType: 'Phone Number',
                ),
                SizedBox(
                  height: 15.h,
                ),
                LoginInButton(
                    heightt: 60,
                    widthh: 310,
                    text: 'Sign Up',
                    color: const Color(0xffB409CE),
                    ontap: () {}),
                SizedBox(
                  height: 20.h,
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
                  height: 10.h,
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
              ],
            ),
          ),
        ));
  }
}
