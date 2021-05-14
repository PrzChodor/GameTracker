import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/cubit/login/login_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/reset_password/reset_password_screen.dart';
import 'package:gametracker/themes/custom_button_themes.dart';
import 'package:gametracker/widgets/custom_text_form_field.dart';
import 'package:gametracker/widgets/password_text_form_field.dart';

class LoginForm extends StatefulWidget {
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late LoginCubit _loginCubit;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isEmailValid &&
        state.isPasswordValid &&
        state is! Loading &&
        isPopulated;
  }

  @override
  void initState() {
    super.initState();
    _loginCubit = BlocProvider.of<LoginCubit>(context);
    _emailController
        .addListener(() => _loginCubit.emailChanged(_emailController.text));
    _passwordController.addListener(
        () => _loginCubit.passwordChanged(_passwordController.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeMap(
            loading: (state) => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: CustomColors.secondaryColor,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logging In...',
                        style: TextStyle(color: CustomColors.backgroundColor),
                      ),
                      CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            CustomColors.backgroundColor),
                      ),
                    ],
                  ),
                ),
              ),
            failure: (state) => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Icon(
                          Icons.error,
                          color: CustomColors.backgroundColor,
                          size: 36,
                        ),
                      ),
                      Expanded(
                          child: RichText(
                              text: TextSpan(children: [
                        TextSpan(
                            text: 'Login Failure\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CustomColors.backgroundColor)),
                        WidgetSpan(
                            child: SizedBox(
                          height: 8,
                        )),
                        TextSpan(
                            text: '\n${state.errorMessage}',
                            style:
                                TextStyle(color: CustomColors.backgroundColor))
                      ]))),
                    ],
                  ),
                  backgroundColor: CustomColors.errorColor,
                ),
              ),
            success: (state) {
              ScaffoldMessenger.of(context)..hideCurrentSnackBar();
              context.read<AuthenticationCubit>().loggedIn();
              Future.delayed(
                  Duration(milliseconds: 500), () => Navigator.pop(context));
            },
            orElse: () {});
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.assignment_ind,
                              size: 36,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Sign In',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 44.0),
                        child: Text(
                          'Please sign in to continue',
                          style: Theme.of(context).textTheme.headline5!.merge(
                              TextStyle(color: CustomColors.secondaryColor)),
                        ),
                      ),
                      CustomTextFormField(
                          controller: _emailController,
                          prefixIcon: Icons.mail,
                          labelText: 'Email',
                          isValid: state.isEmailValid,
                          errorText: 'Invalid Email.'),
                      PasswordTextFormField(
                        controller: _passwordController,
                        labelText: 'Password',
                        isValid: state.isPasswordValid,
                        errorText: 'Enter password.',
                        isLast: true,
                        onFieldSubmitted: isLoginButtonEnabled(state)
                            ? (_) => _loginCubit.logInWithCredentials(
                                _emailController.text, _passwordController.text)
                            : null,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResetPasswordScreen()),
                                    ),
                                child: Text(
                                  'Forgot password?',
                                )),
                            SizedBox(
                              height: 48,
                              width: 132,
                              child: ElevatedButton(
                                  style: CustomButtonThemes
                                      .secondaryButtonTheme.style,
                                  onPressed: isLoginButtonEnabled(state)
                                      ? () => _loginCubit.logInWithCredentials(
                                          _emailController.text,
                                          _passwordController.text)
                                      : null,
                                  child: Row(
                                    children: [
                                      Expanded(child: Text('Sign in')),
                                      Icon(Icons.arrow_forward_rounded),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
