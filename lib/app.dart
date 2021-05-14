import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/home_screen.dart';
import 'package:gametracker/screens/splash_screen.dart';
import 'package:gametracker/screens/verify_email.dart';
import 'package:gametracker/screens/welcome_screen.dart';
import 'package:gametracker/themes/main_theme.dart';

class App extends StatefulWidget {
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: CustomColors.backgroundColor,
      systemNavigationBarColor: CustomColors.backgroundColor,
    ));
    return BlocProvider(
      create: (context) => AuthenticationCubit()..appStarted(),
      child: MaterialApp(
        title: 'GameTracker',
        theme: MainTheme.mainTheme,
        color: CustomColors.backgroundColor,
        home: BlocBuilder<AuthenticationCubit, AuthenticationState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 250),
              child: state.when(
                  uninitialized: () => SplashScreen(),
                  authenticated: () => HomeScreen(),
                  unauthenticated: () => WelcomeScreen(),
                  emailNotVerified: () => VerifyEmail()),
              switchOutCurve: Threshold(0),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.25),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
                    child: child,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
