import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/viewmodel/store_cubit/store_cubit.dart';
import 'package:store_app/viewmodel/store_cubit/store_state.dart';

import '../../classes/customPaint.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCubit,StoreState>(builder: (context, state) {
      var cubit=StoreCubit.get(context);
      return Scaffold(

        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/d1f6b8325df78827f8dc3f07d2d0c9c5.jpg"),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),
              Form(
                key: StoreCubit.formState,
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your Email";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: cubit.emailController,
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                        cursorColor: Colors.blueGrey.shade800,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              color: Colors.blueGrey.shade800,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.amber)),
                            filled: true,
                            fillColor: Colors.white,
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blueGrey.shade800,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.amber),
                                borderRadius: BorderRadius.circular(35))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter your password";
                            }
                            return null;
                          },
                          obscureText: cubit.isObscure,
                          controller: cubit.passwordController,
                          style:  TextStyle(
                              color: Colors.amber),
                          cursorColor: Colors.amber,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              errorStyle: TextStyle(
                                  color: Colors.blueGrey.shade800),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.amber)),
                              filled: true,
                              fillColor: Colors.white,
                              label: Text(
                                "Password",
                                style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  cubit.showPassword();
                                },
                                icon: Icon(cubit.isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                color: Colors.blueGrey.shade800,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.amber),
                                  borderRadius: BorderRadius.circular(35)))),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            activeColor: Colors.amber,
                            value: true,
                            groupValue: cubit.remember,
                            toggleable: true,
                            onChanged: (bool? value) {
                              cubit.rememberMe();
                            },
                          ),
                          Text("Remember me",
                              style: TextStyle(
                                  fontSize: 15,
                                  color:
                                  Colors.blueGrey.shade800)),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                                "Forget Password",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey.shade800)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              Colors.blueGrey.shade800),
                          onPressed: () {
                            // cubit.data();
                            // cubit.loginUser();
                          },
                          child: Text(
                              "SignUp",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                        "Already have an account",
                        style:  TextStyle( fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade800)),

                    TextButton(
                        onPressed: () {
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        child: Text("Login",
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                              decoration: TextDecoration.underline,

                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }, listener: (context, state) {

    });
  }
}