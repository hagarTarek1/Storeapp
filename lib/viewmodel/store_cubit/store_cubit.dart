


import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_app/viewmodel/store_cubit/store_state.dart';



class StoreCubit extends Cubit<StoreState>{
  StoreCubit():super(InitState());
  static StoreCubit get(context)=> BlocProvider.of<StoreCubit>(context);
  static var formState=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool remember=false;
  bool isObscure=true;
  bool  isLoggedIn=false;
  String name='';
  int index=0;
  late CarouselController controller;
  changeindex (x){
    x=index;
    emit(RememberSuccess());
  }

  void rememberMe (){
    remember = !remember;
    print(remember);
    emit(RememberSuccess());
  }
  void showPassword(){
    isObscure =! isObscure;
    emit(IsObscure());
  }
  checkLogin (){
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
      emit(DataSuccess());
    }
    print("invalid");
    emit(DataError());
  }


  // void autoLogIn() async {
  //   await Future.delayed(Duration(seconds: 1));
  //
  //   var result = SharedPreference.sharedPreferences.getString('username');
  //   if (result != null) {
  //       isLoggedIn = true;
  //       emit(RememberSuccess());
  //   }
  //   else {
  //     emit(RememberError());
  //   }
  //
  // }

  // Loginn () async {
  // SharedPreference.sharedPreferences.setString('username', emailController.text);
  //   name = emailController.text;
  //   isLoggedIn = true;
  // emit(RememberSuccess());
  // }
  //
  // Logout () async {
  //   SharedPreference.sharedPreferences.setString('username',null ??"");
  //    name = '';
  //     isLoggedIn = false;
  //   emit(RememberSuccess());
  // }
   }