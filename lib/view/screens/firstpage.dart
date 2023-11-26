import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/classes/carousel.dart';
import 'package:store_app/view/components/dotts%20details.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';
import 'package:store_app/viewmodel/store_cubit/store_state.dart';

import '../components/carousel.dart';
import '../components/carousel2.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit,StoreState>(builder: (context,state){
      return Scaffold(
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          child: BottomNavigationBar(
            backgroundColor:  Colors.blueGrey.shade800,
          items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home,
          color: Colors.white,),
        activeIcon:Icon(Icons.home,
          color: Colors.amber,),

        label: 'Shop',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.travel_explore_outlined,
      color: Colors.white,),
      activeIcon: Icon(Icons.travel_explore_outlined,
      color: Colors.amber,
      ),
      label: 'Explore',
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart,
        color: Colors.white,),
      activeIcon: Icon(Icons.shopping_cart,
        color: Colors.amber,),
      label: 'Cart',
      ),],),),
        appBar: AppBar(centerTitle: true,
            backgroundColor: Colors.blueGrey.shade800,
            foregroundColor: Colors.white,
            elevation: 10,
            title: Text("Shopping",style:TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,),),),
     body: ListView(children: [
       BannerSection(),
       Dotts(),
       SizedBox(height: 20,),

       WidgetsSection()
     ],),
      );
    }, listener: (context,state){});
  }
}
