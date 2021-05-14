import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/reset_password/reset_password_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/themes/custom_button_themes.dart';
import 'package:gametracker/widgets/custom_text_form_field.dart';

class ResetPasswordForm extends StatefulWidget {
  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  late ResetPasswordCubit _resetCubit;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool isResetButtonEnabled(ResetPasswordState state) {
    return state.isEmailValid &&
        state is! Loading &&
        _emailController.text.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    _resetCubit = BlocProvider.of<ResetPasswordCubit>(context);
    _emailController
        .addListener(() => _resetCubit.emailChanged(_emailController.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
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
                        'Sending email...',
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
                            text: 'Failure\n',
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
                              text: 'Success\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.backgroundColor)),
                          WidgetSpan(
                              child: SizedBox(
                            height: 8,
                          )),
                          TextSpan(
                              text:
                                  '\nPlease check your email to reset your password',
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
      child: BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
        builder: (BuildContext context, state) {
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
                              Icons.replay,
                              size: 36,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Reset password',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 44.0),
                        child: Text(
                          'Please enter your email',
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: SizedBox(
                            width: 132,
                            height: 48,
                            child: ElevatedButton(
                                style: CustomButtonThemes
                                    .secondaryButtonTheme.style,
                                onPressed: isResetButtonEnabled(state)
                                    ? () => context
                                        .read<ResetPasswordCubit>()
                                        .resetPassword(_emailController.text)
                                    : null,
                                child: Row(
                                  children: [
                                    Expanded(child: Text('Reset')),
                                    Icon(Icons.arrow_forward_rounded),
                                  ],
                                )),
                          ),
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
}
