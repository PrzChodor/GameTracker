import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/cubit/welcome/welcome_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/login/login_screen.dart';
import 'package:gametracker/screens/register/register_screen.dart';
import 'package:gametracker/themes/custom_button_themes.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => WelcomeCubit(),
          child: BlocListener<WelcomeCubit, WelcomeState>(
            listener: (context, state) {
              state.maybeMap(
                  loading: (state) => ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Logging In...'),
                            CircularProgressIndicator(),
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
                                color: Colors.redAccent[100],
                                size: 36,
                              ),
                            ),
                            Expanded(
                                child: RichText(
                                    text: TextSpan(children: [
                              TextSpan(
                                  text: 'Login Failure\n',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 8,
                              )),
                              TextSpan(text: '\n${state.errorMessage}')
                            ]))),
                          ],
                        ),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  success: (state) {
                    ScaffoldMessenger.of(context)..hideCurrentSnackBar();
                    context.read<AuthenticationCubit>().loggedIn();
                  },
                  orElse: () {});
            },
            child: BlocBuilder<WelcomeCubit, WelcomeState>(
              builder: (context, state) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/logo.svg',
                          color: CustomColors.secondaryColor,
                          width: 256,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: Text(
                            "GameTracker",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .merge(TextStyle(fontFamily: 'Oxanium')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: SizedBox(
                            height: 48,
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              ),
                              child: Text('Sign in'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: SizedBox(
                            height: 48,
                            width: 250,
                            child: ElevatedButton(
                              style: CustomButtonThemes.borderButtonTheme.style,
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()),
                              ),
                              child: Text('Create account'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            'Or connect using',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 48,
                                width: 160,
                                child: ElevatedButton.icon(
                                  onPressed: () => context
                                      .read<WelcomeCubit>()
                                      .logInWithGoogle(),
                                  label: Text('Google'),
                                  icon: Icon(FontAwesomeIcons.google),
                                  style: CustomButtonThemes.googleButton.style,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: SizedBox(
                                  height: 48,
                                  width: 160,
                                  child: ElevatedButton.icon(
                                    onPressed: () => context
                                        .read<WelcomeCubit>()
                                        .logInWithFacebook(),
                                    label: Text('Facebook'),
                                    icon: Icon(FontAwesomeIcons.facebookF),
                                    style:
                                        CustomButtonThemes.facebookButton.style,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
