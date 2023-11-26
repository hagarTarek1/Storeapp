import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/classes/sharedpreference.dart';
import 'package:store_app/view/screens/homeScreen.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';





Future<void> main() async {
  // await SharedPreference.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>StoreCubit())
    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage() ,));
  }
}
