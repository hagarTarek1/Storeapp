import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';

import '../../classes/carousel.dart';
import 'carouselDetails.dart';

class BannerSection extends StatelessWidget {
  BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 10/5,
            onPageChanged: (x,reason){
              x=StoreCubit.get(context).changeindex(x);
            },
            enlargeCenterPage: true,
            viewportFraction: 1,
          ),
          items: banners.map((item) => BannersDetails(
            banner: item,
          )
          ).toList(),

             );

  }
}

