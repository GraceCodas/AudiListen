import 'package:audilisten/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.1.sh,
            ),
            Image.asset("assets/images/logo.png"),
            SizedBox(
              height: 0.02.sh,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login to Your Account",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Form(
                    child: SizedBox(
                  width: 0.85.sw,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          //  controller: amountcontroller,
                          maxLength: null,
                          maxLines: null,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                              ),
                              hintText: "abc.sss.com",
                              prefixIcon: const Icon(Icons.email),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              fillColor: Colors.white),
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          //  controller: amountcontroller,
                          maxLength: null,
                          maxLines: null,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                              ),
                              hintText: "********",
                              prefixIcon: const Icon(Icons.lock),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              fillColor: Colors.white),
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (onChanged) {},
                            activeColor: primarycolor,
                          ),
                          Text(
                            "Remember me",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      DefaultButton(
                        text: "Login",
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot password?",
                          style:
                          TextStyle(color: Colors.red, fontSize: 14.sp),
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SocialLoginButton(
                              height: 0.1.sh,
                              width: 0.2.sw,
                              text: "",
                              buttonType: SocialLoginButtonType.google,
                              onPressed: () {},
                            ),
                          ),

                          Expanded(
                            child: SocialLoginButton(
                              height: 0.1.sh,
                              width: 0.2.sw,
                              text: "",
                              buttonType: SocialLoginButtonType.facebook,
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: SocialLoginButton(
                              height: 0.1.sh,
                              width: 0.2.sw,
                              text: "",
                              buttonType: SocialLoginButtonType.twitter,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
