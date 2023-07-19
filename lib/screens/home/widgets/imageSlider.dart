import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  // final urlImages = [
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0HS9Nt179yfhXYrPXxD49ZbDYA1f8ldLHGaCbIF3Y&s'
  //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgzreP05acPhu9uCHSLeNUBZ-6e6hay1lko2VpBJ6M&s'
  //       'https://i.pinimg.com/originals/4e/a9/4c/4ea94cccf1d817ce3dd826af98a1ac27.jpg'
  // ];

  List urlImages = [
    'asset/imageSlider/Ad one.jpg',
    'asset/imageSlider/ad two.jpg',
    'asset/imageSlider/ad three.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 700.h,
              autoPlay: true,
              // reverse: true,
              viewportFraction: 1,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),

          // const SizedBox(
          //   height: 10,
          // ),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
      width: double.infinity,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          ),
      margin: EdgeInsets.only(bottom: 30.h, right: 50.w, left: 40.w),
      child: Padding(
        padding:  EdgeInsets.all(10.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(90.r),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ));

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: JumpingDotEffect(
            dotHeight: 22.h,
            dotWidth: 22.h,
            activeDotColor: const Color(0xFF00B212D)),
      );
}
