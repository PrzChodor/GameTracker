import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/reset_password/reset_password_cubit.dart';
import 'package:gametracker/screens/reset_password/reset_password_form.dart';

class ResetPasswordScreen extends StatefulWidget {
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: BlocProvider(
          create: (context) => ResetPasswordCubit(),
          child: ResetPasswordForm(),
        ),
      ),
    );
  }
}
