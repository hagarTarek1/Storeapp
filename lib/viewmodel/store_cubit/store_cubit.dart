
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
  void rememberMe (){
    remember = !remember;
    print(remember);
    emit(RememberSuccess());
  }
  void showPassword(){
    isObscure =! isObscure;
    emit(IsObscure());
  }
  }