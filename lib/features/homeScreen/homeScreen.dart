import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> gridtileData = [
      {
        "text": "workspaces",
        "image": "assets/splashAssets/carsouelAssets/slide1.png"
      },
      {
        "text": "     Schools",
        "image": "assets/splashAssets/carsouelAssets/slide2.png"
      },
      {
        "text": "   Local Food ",
        "image": "assets/splashAssets/carsouelAssets/slide3.png"
      },
      {
        "text": "       Gyms",
        "image": "assets/splashAssets/carsouelAssets/slide4.png"
      },
      {
        "text": "      Salons ",
        "image": "assets/splashAssets/carsouelAssets/slide5.png"
      },
      {
        "text": "Marriage Halls",
        "image": "assets/splashAssets/carsouelAssets/slide6.png"
      },
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: ListTile(
            title: Text(
              'Welcome!',
              style: headingTheme.copyWith(
                  color: kPrimaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Memooma Khan',
                style: paraTheme.copyWith(
                    color: kPrimaryColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700)),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: kgradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: 50.w,
              child: const Icon(
                Icons.menu,
                // color: kPrimaryColor,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset('assets/icons/elfaspace_logo.png'),
                SizedBox(
                  width: 290.w,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: const Icon(
                        Icons.pin_drop_sharp,
                        color: kSecondaryColor,
                      ),
                      hintText: 'Current location, city, province',
                      hintStyle: paraTheme.copyWith(color: kSecondaryColor),
                      filled: true,
                      fillColor: kBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 270.w,
                    height: 30.h,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(0),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: kSecondaryColor,
                        ),
                        hintText: 'Search',
                        hintStyle: paraTheme.copyWith(color: kSecondaryColor),
                        filled: true,
                        fillColor: kBackgroundColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: kgradientColors,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    height: 40.h,
                    width: 50.w,
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: kBackgroundColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
//main bodysized
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 2.2 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      maxCrossAxisExtent: 200,
                    ),
                    itemCount: gridtileData.length,
                    itemBuilder: (_, index) {
                      return moduelTile(gridtileData[index]['image'] as String,
                          gridtileData[index]['text'] as String, () {});
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector moduelTile(String image, String text, VoidCallback ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 200.h,
            width: 200.w,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 30,
              bottom: 0,
              child: Text(
                text,
                style: headingTheme.copyWith(
                    color: kBackgroundColor, fontSize: 18.sp),
              ))
        ],
      ),
    );
  }
}
