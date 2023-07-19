import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageProductSlider extends StatefulWidget {
  const ImageProductSlider({super.key});

  @override
  State<ImageProductSlider> createState() => _ImageProductSliderState();
}

class _ImageProductSliderState extends State<ImageProductSlider> {
  int activeIndex = 0;
  // final urlImages = [
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0HS9Nt179yfhXYrPXxD49ZbDYA1f8ldLHGaCbIF3Y&s'
  //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgzreP05acPhu9uCHSLeNUBZ-6e6hay1lko2VpBJ6M&s'
  //       'https://i.pinimg.com/originals/4e/a9/4c/4ea94cccf1d817ce3dd826af98a1ac27.jpg'
  // ];

  List urlImages = [
     "asset/homeGridImage/AirOutfits-removebg-preview.png",
    'asset/imageInCard/Boots-removebg-preview.png',
    'asset/imageSlider/ad three.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            // padding: EdgeInsets.all(),
            // color: Colors.white,
            height: 250,
            child: CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: 1500.h,
                // autoPlay: true,
                // reverse: true,
                viewportFraction: 1,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
          ),

           SizedBox(
            height: 111.h,
            child: buildIndicator(),
          ),
          
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
      // width: double.infinity,
      
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          ),
      // margin: EdgeInsets.only(bottom: 30.h, right: 50.w, left: 40.w),
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(90.r),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ));

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
          dotColor: Colors.white,
            dotHeight: 22.h,
            dotWidth: 22.h,
            activeDotColor: const Color(0xFF00B212D)),
      );
}
