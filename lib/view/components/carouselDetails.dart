import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';
import 'package:store_app/viewmodel/store_cubit/store_state.dart';

import '../../classes/carousel.dart';

class BannersDetails extends StatelessWidget {
  BannerModel banner;
  BannersDetails({required this.banner,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit,StoreState>(builder: (context,state){
      return Stack(children: [

       Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(

            children: [
              Container(height: 500,
                decoration:  BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight:Radius.circular(25) )
                ),
              ),
              Image.asset(banner.imageUrl?? "",height: 200,width: 300,fit: BoxFit.fill,),

            ],
          ),
        )
      ],);
    }, listener: (context,state){});
  }
}