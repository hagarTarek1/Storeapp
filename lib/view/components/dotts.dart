import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';
import 'package:store_app/viewmodel/store_cubit/store_state.dart';

import '../../classes/dots.dart';


class DottsDetails extends StatelessWidget {
 Dotts dotts;
 DottsDetails({required this.dotts,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit,StoreState>(builder: (context,state){
      return Stack(children: [

        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(

            children: [
              InkWell( onTap: (){},
                child: CircleAvatar( radius: 40,
                  backgroundColor: dotts.color,
                child: Icon(dotts.icon,color: Colors.white,size: 25,),),
              ),
              SizedBox(height: 10,),
      Text(dotts.title,
      style:TextStyle(
        fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.amber,
      decoration: TextDecoration.underline,),),
            ],
          ),
        )
      ],);
    }, listener: (context,state){});
  }
}