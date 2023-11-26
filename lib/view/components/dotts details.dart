import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:store_app/classes/carousel.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';


class Dotts extends StatelessWidget {
  const Dotts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DotsIndicator(

      dotsCount: banners.length,
      position: StoreCubit.get(context).index,
      onTap: (x){
        StoreCubit.get(context).changeindex(x);
      },
      axis: Axis.horizontal,
      decorator: DotsDecorator(
        activeColor: Colors.amber,
      ),
    );
  }
}
