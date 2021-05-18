import 'package:flutter/material.dart';
import 'package:gametracker/cubit/games_tabs/games_tabs_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/games/games_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'added_list_tab.dart';
import 'completed_list_tab.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.darkerBackgroundColor,
        body: BlocBuilder<GamesTabsCubit, bool>(
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 55,
                  child: Row(
                    children: [
                      Expanded(
                        child: GamesTab(
                          text: 'PLAY NEXT',
                          selected: !state,
                          onTap: () =>
                              context.read<GamesTabsCubit>().switchTab(false),
                        ),
                      ),
                      Expanded(
                        child: GamesTab(
                          text: 'COMPLETED',
                          selected: state,
                          onTap: () =>
                              context.read<GamesTabsCubit>().switchTab(true),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    child: state ? CompletedListTab() : AddedListTab(),
                    transitionBuilder: (child, animation) => SlideTransition(
                      position: CurvedAnimation(
                        curve: Curves.easeInOut,
                        parent: animation,
                      ).drive((Tween<Offset>(
                        begin: Offset(state ? -1 : 1, 0),
                        end: Offset(0, 0),
                      ))),
                      child: child,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
