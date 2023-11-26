import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/view/screens/loginScreen.dart';
import '../../viewmodel/store_cubit/store_cubit.dart';
import '../../viewmodel/store_cubit/store_state.dart';
import 'firstpage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit,StoreState>(builder: (context,state){
      return Scaffold(
        backgroundColor: Colors.grey[50],
    body: Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(children: [
        Stack(
          children: [
            Image.asset("assets/d1f6b8325df78827f8dc3f07d2d0c9c5.jpg",fit: BoxFit.fill,height:450,),
            Container( margin: EdgeInsets.only(left: 10,right: 10,top: 410),
              width: double.infinity,height: 300,
              padding: EdgeInsets.only(left:2,right: 100,top: 120,bottom: 80),
              decoration: BoxDecoration(
                  color: Colors.amber,borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),topRight: Radius.circular(60))),child:
                    ElevatedButton(
                style: ElevatedButton.styleFrom(
                 elevation: 5,
                      side: BorderSide(width: 2,color: Colors.white),
                      backgroundColor: Colors.blueGrey[800],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)))),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                  // StoreCubit.get(context).autoLogIn();
                },child: Row(
                    children: [
                      Text("Let's start Shopping",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                ),),
                  ),

          ],
        ),
     ],),
    ),
      );
    }, listener: (context,state){
      // state is RememberSuccess?
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>FirstPage())):
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));


    });
  }
}
