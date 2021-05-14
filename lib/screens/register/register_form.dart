import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/register/register_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/themes/custom_button_themes.dart';
import 'package:gametracker/widgets/custom_text_form_field.dart';
import 'package:gametracker/widgets/password_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  late RegisterCubit _registerCubit;

  bool get isPopulated =>
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty &&
      _passwordConfirmationController.text.isNotEmpty &&
      _nameController.text.isNotEmpty;

  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isEmailValid &&
        state.isPasswordValid &&
        state.isUsernameValid &&
        state.arePasswordMatching &&
        state is! Loading &&
        isPopulated;
  }

  @override
  void initState() {
    super.initState();
    _registerCubit = BlocProvider.of<RegisterCubit>(context);

    _emailController
        .addListener(() => _registerCubit.emailChanged(_emailController.text));

    _passwordController.addListener(() {
      _registerCubit.passwordChanged(_passwordController.text);
      _registerCubit.passwordsMatchChanged(
          _passwordController.text, _passwordConfirmationController.text);
    });

    _nameController.addListener(
        () => _registerCubit.usernameChanged(_nameController.text));

    _passwordConfirmationController.addListener(() =>
        _registerCubit.passwordsMatchChanged(
            _passwordController.text, _passwordConfirmationController.text));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(_registerCubit.state is! Loading),
      child: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.maybeMap(
              loading: (_) => ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    backgroundColor: CustomColors.secondaryColor,
                    duration: Duration(days: 365),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Registering...',
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
                        Flexible(
                            child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Registration Failure\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.backgroundColor)),
                          WidgetSpan(
                              child: SizedBox(
                            height: 8,
                          )),
                          TextSpan(
                              text: '\n${state.errorMessage}',
                              style: TextStyle(
                                  color: CustomColors.backgroundColor))
                        ]))),
                      ],
                    ),
                    backgroundColor: CustomColors.errorColor,
                  ),
                ),
              success: (_) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.check_rounded,
                              color: CustomColors.backgroundColor,
                              size: 36,
                            ),
                          ),
                          Expanded(
                              child: RichText(
                                  text: TextSpan(children: [
                            TextSpan(
                                text: 'Registration successful\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.backgroundColor)),
                            WidgetSpan(
                                child: SizedBox(
                              height: 8,
                            )),
                            TextSpan(
                                text:
                                    '\nPlease check your email to activate your account',
                                style: TextStyle(
                                    color: CustomColors.backgroundColor))
                          ]))),
                        ],
                      ),
                      backgroundColor: CustomColors.successColor,
                    ),
                  );
              },
              orElse: () {});
        },
        child: BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            return Center(
              child: SingleChildScrollView(
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 44.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_alt_1_rounded,
                                size: 36,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Create Account',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(
                            controller: _nameController,
                            prefixIcon: Icons.person_rounded,
                            labelText: 'Username',
                            isValid: state.isUsernameValid,
                            errorText:
                                'Username must be between 5 and 20 alphanumeric characters long.'),
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
                            errorText:
                                'Password must be at least 8 characters long including 1 uppercase letter and 1 number.'),
                        PasswordTextFormField(
                          controller: _passwordConfirmationController,
                          labelText: 'Confirm password',
                          isValid: state.arePasswordMatching,
                          errorText: 'Passwords are not the same.',
                          isLast: true,
                          onFieldSubmitted: isRegisterButtonEnabled(state)
                              ? (_) => _registerCubit.formSubmitted(
                                  _emailController.text,
                                  _passwordController.text,
                                  _nameController.text)
                              : null,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: SizedBox(
                              height: 48,
                              width: 132,
                              child: ElevatedButton(
                                  style: CustomButtonThemes
                                      .secondaryButtonTheme.style,
                                  onPressed: isRegisterButtonEnabled(state)
                                      ? () => _registerCubit.formSubmitted(
                                          _emailController.text,
                                          _passwordController.text,
                                          _nameController.text)
                                      : null,
                                  child: Row(
                                    children: [
                                      Expanded(child: Text('Sign up')),
                                      Icon(Icons.arrow_forward_rounded),
                                    ],
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
