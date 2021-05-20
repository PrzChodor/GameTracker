import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/game_lists/completed_list_cubit.dart';
import 'package:gametracker/cubit/game_lists/list_state.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/widgets/game_list_item.dart';

class CompletedListTab extends StatefulWidget {
  @override
  _CompletedListTabState createState() => _CompletedListTabState();
}

class _CompletedListTabState extends State<CompletedListTab> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  late final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompletedListCubit()..loadGames(),
      child: BlocConsumer<CompletedListCubit, ListState>(
        listener: (context, state) {
          if (state is AddingResults) {
            //Animate adding result
            WidgetsBinding.instance!.addPostFrameCallback((_) =>
                _listKey.currentState?.insertItem(state.games.length - 1,
                    duration: Duration(milliseconds: 300)));
          }
        },
        builder: (context, state) {
          return state is Loading
              ? Center(
                  child: SizedBox(
                  height: 128,
                  width: 128,
                  child: CircularProgressIndicator(
                    strokeWidth: 8,
                    valueColor:
                        AlwaysStoppedAnimation(CustomColors.secondaryColor),
                  ),
                ))
              : NotificationListener(
                  onNotification: (notification) {
                    if (notification is OverscrollIndicatorNotification) {
                      notification.disallowGlow();
                    }
                    return false;
                  },
                  child: AnimatedList(
                    controller: _scrollController,
                    key: _listKey,
                    padding: EdgeInsets.all(6.0),
                    initialItemCount: state is Results ? state.games.length : 0,
                    itemBuilder: (context, index, animation) => _buildListItem(
                        context, index, animation, state.games, false),
                  ),
                );
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index,
      Animation<double> animation, List<Game> games, bool removed) {
    return SlideTransition(
      position: CurvedAnimation(
        curve: Curves.easeOut,
        parent: animation,
      ).drive((Tween<Offset>(
        begin: Offset(removed ? -1 : 1, 0),
        end: Offset(0, 0),
      ))),
      child: GameListItem(
        game: games[index],
        isFromList: true,
        onStateChange: (reversed) =>
            context.read<CompletedListCubit>().removeItem(index, _removeItem),
      ),
    );
  }

  ///Remove item from AnimatedList with correct animation
  void _removeItem(int index, List<Game> games) {
    _listKey.currentState?.removeItem(
      index,
      (context, animation) =>
          _buildListItem(context, index, animation, games, true),
      duration: Duration(milliseconds: 300),
    );
  }
}
