import 'package:flutter/material.dart';
import 'package:gametracker/cubit/authentication/authentication_cubit.dart';
import 'package:gametracker/data/repositories/game_repository.dart';
import 'package:gametracker/data/repositories/user_repository.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteDialog extends StatefulWidget {
  @override
  _DeleteDialogState createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      backgroundColor: CustomColors.backgroundColor,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(
                Icons.error_outline,
                size: 80,
                color: CustomColors.errorColor,
              ),
            ),
            Text(
              'Are you sure you want to delete your account?',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 120,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.errorColor,
                      ),
                      onPressed: () async {
                        await GameRepository().deleteUser();
                        await UserRepository().deleteUser().then((_) async {
                          Navigator.pop(context);
                          context.read<AuthenticationCubit>().loggedOut();
                          ScaffoldMessenger.of(context)
                            ..showSnackBar(
                              SnackBar(
                                content: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 16.0),
                                      child: Icon(
                                        Icons.check_rounded,
                                        color: CustomColors.backgroundColor,
                                        size: 36,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Deletion Success\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: CustomColors
                                                    .backgroundColor,
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: SizedBox(
                                                height: 8,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nYour account was successfully deleted!',
                                              style: TextStyle(
                                                  color: CustomColors
                                                      .backgroundColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                backgroundColor: CustomColors.successColor,
                              ),
                            );
                        }).onError((error, stackTrace) {
                          context.read<AuthenticationCubit>().loggedOut();
                          ScaffoldMessenger.of(context)
                            ..showSnackBar(
                              SnackBar(
                                content: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 16.0),
                                      child: Icon(
                                        Icons.error,
                                        color: CustomColors.backgroundColor,
                                        size: 36,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Deletion Failure\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: CustomColors
                                                    .backgroundColor,
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: SizedBox(
                                                height: 8,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nYou need to freshly log in to delete your account!',
                                              style: TextStyle(
                                                  color: CustomColors
                                                      .backgroundColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                backgroundColor: CustomColors.errorColor,
                              ),
                            );
                        });
                      },
                      child: Text(
                        'Delete',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
