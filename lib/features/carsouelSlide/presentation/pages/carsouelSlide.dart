import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/logInButton.dart';
import 'package:flutter/material.dart';
import '../widgets/carsouelBody.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../provider/dotChanger.dart';
import 'package:provider/provider.dart';

class CarsouelSlide extends StatelessWidget {
  const CarsouelSlide({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> carsouelData = [
      {
        "text1": "Find Best workspaces\nNear you",
        "text2":
            "Search for exactly what you want and we will \nfind the best places nearby.",
        "image": "assets/splashAssets/carsouelAssets/slide1.png"
      },
      {
        "text1": "Top Schools Near you",
        "text2":
            "Find the best doctors in your area, get \nlocation of clinics or get consultant \nfrom top doctors from the comfort of your home.",
        "image": "assets/splashAssets/carsouelAssets/slide2.png"
      },
      {
        "text1": "Top Local Food \nNear you",
        "text2":
            "Find the best doctors in your area, get location of clinics or get consultant from top doctors from the comfort of your home.",
        "image": "assets/splashAssets/carsouelAssets/slide3.png"
      },
      {
        "text1": "Top Gyms Near you",
        "text2":
            "Find the best doctors in your area, get location of clinics or get consultant from top doctors from the comfort of your home..",
        "image": "assets/splashAssets/carsouelAssets/slide4.png"
      },
      {
        "text1": "Top Salons Near you",
        "text2":
            "Find the best doctors in your area, get location of clinics or get consultant from top doctors from the comfort of your home.",
        "image": "assets/splashAssets/carsouelAssets/slide5.png"
      },
      {
        "text1": "Top Marriage Halls \nNear you",
        "text2":
            "Find the best doctors in your area, get location of clinics or get consultant from top doctors from the comfort of your home.",
        "image": "assets/splashAssets/carsouelAssets/slide6.png"
      },
    ];
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              height: 500.h,
              child: PageView.builder(
                itemCount: carsouelData.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  Provider.of<DotChanger>(context, listen: false)
                      .setindex(value);
                },
                itemBuilder: (context, index) {
                  return CarsouelBody(
                    text1: carsouelData[index]["text1"] as String,
                    text2: carsouelData[index]["text2"] as String,
                    image: carsouelData[index]["image"] as String,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  carsouelData.length,
                  (index) => Consumer<DotChanger>(
                        builder: (context, value, child) {
                          return dot(index, value.currentindex);
                        },
                      )),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 50.w,
              endIndent: 50.w,
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                LoginInButton(
                  text: 'Log in',
                  color: Color(0xffB409CE),
                ),
                LoginInButton(
                  text: 'Sign Up',
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 8.h),
            Text('Not looking for groceries?',
                style: TextStyle(
                    fontFamily: 'Monsterrat-Medium',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: const Color(0xff000000).withOpacity(0.5))),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Become a Partner',
                    style: TextStyle(
                        fontFamily: 'Monsterrat-Medium',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.blue)),
                const Text('|',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Text('Become a Rider',
                    style: TextStyle(
                        fontFamily: 'Monsterrat-Medium',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.blue))
              ],
            )
          ]),
        ));
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
