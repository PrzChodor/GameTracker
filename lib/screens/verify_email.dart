import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/cubit/email_verification/email_verification_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/repositories/user_repository.dart';

class VerifyEmail extends StatefulWidget {
  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailVerificationCubit()..waitForVerification(),
      child: BlocListener<EmailVerificationCubit, EmailVerificationState>(
        listener: (context, state) {
          if (state is Verified) {
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
                        child: Text('Email verified',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CustomColors.backgroundColor)),
                      ),
                    ],
                  ),
                  backgroundColor: CustomColors.successColor,
                ),
              );

            context.read<AuthenticationCubit>().loggedIn();
          }
        },
        child: BlocBuilder<EmailVerificationCubit, EmailVerificationState>(
            builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.exit_to_app_rounded,
                    size: 36,
                  ),
                  onPressed: () =>
                      context.read<AuthenticationCubit>().loggedOut(),
                ),
              ),
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 44.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_rounded,
                                size: 36,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Verify Email',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'We sent email to\n',
                            style: Theme.of(context).textTheme.headline5,
                            children: [
                              TextSpan(
                                text: UserRepository().getEmail(),
                                style: TextStyle(
                                    color: CustomColors.secondaryColor),
                              ),
                              TextSpan(
                                text:
                                    '\n\nClick the link in that email to complete your registration\n\n',
                              ),
                              TextSpan(
                                text: "Can't find the email?",
                                style: TextStyle(
                                    color: CustomColors.secondaryColor),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 44.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 48,
                                width: 160,
                                child: ElevatedButton(
                                    onPressed: state is NotVerified &&
                                            state.currentTick == 0
                                        ? () => context
                                            .read<EmailVerificationCubit>()
                                            .sendNewEmail()
                                        : null,
                                    child: Text('Resend email')),
                              ),
                              state is NotVerified && state.currentTick != 0
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: CircularProgressIndicator(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.5),
                                        valueColor: AlwaysStoppedAnimation(
                                            CustomColors.secondaryColor),
                                        value: 1 -
                                            state.currentTick /
                                                context
                                                    .read<
                                                        EmailVerificationCubit>()
                                                    .resendDelayDuration,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
