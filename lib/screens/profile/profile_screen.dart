import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/data/repositories/user_repository.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/profile/profile_stats.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkerBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person_rounded,
                    size: 48,
                    color: CustomColors.textColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Profile',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  )
                ],
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: CustomColors.backgroundColor,
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: 92,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Logged in as'),
                              Text(
                                UserRepository().getUsername()!,
                                style: Theme.of(context).textTheme.headline5,
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: CustomColors.secondaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                              ),
                            ),
                            child: IconButton(
                                padding: const EdgeInsets.all(0),
                                constraints: BoxConstraints(),
                                splashRadius: 16,
                                icon: Icon(
                                  Icons.exit_to_app_rounded,
                                  color: CustomColors.backgroundColor,
                                ),
                                onPressed: () => context
                                    .read<AuthenticationCubit>()
                                    .loggedOut()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ProfileStats(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 250,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 4),
                    onPressed: () =>
                        context.read<AuthenticationCubit>().loggedOut(),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Log out'),
                        ),
                        Icon(
                          Icons.exit_to_app_rounded,
                          color: CustomColors.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 250,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 4),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Change password'),
                        ),
                        Icon(
                          Icons.lock,
                          color: CustomColors.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 250,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      primary: CustomColors.errorColor,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Delete Account'),
                        ),
                        Icon(
                          Icons.delete,
                          color: CustomColors.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
