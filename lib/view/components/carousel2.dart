import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store_app/classes/dots.dart';
import 'package:store_app/view/components/dotts%20details.dart';
import 'package:store_app/view/components/dotts.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';

import '../../classes/carousel.dart';
import 'carouselDetails.dart';

class WidgetsSection extends StatelessWidget {
  WidgetsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: false,
          // aspectRatio: 10/5,
          onPageChanged: (x,reason){
            x=StoreCubit.get(context).changeindex(x);
          },
          // enlargeCenterPage: true,
          viewportFraction: 2,
        ),
        items: itemsD.map((item) => DottsDetails(dotts: item)
        ).toList(),

      );

  }
}
