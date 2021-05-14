import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/login/login_cubit.dart';

import 'login_form.dart';

class LoginScreen extends StatefulWidget {
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(),
          child: LoginForm(),
        ),
      ),
    );
  }
}
