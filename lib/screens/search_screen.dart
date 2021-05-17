import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/search/search_cubit.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/widgets/game_list_item.dart';
import 'package:gametracker/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController(
        initialScrollOffset: context.read<SearchCubit>().currentScrollOffset);
    _scrollController.addListener(
        () => context.read<SearchCubit>().checkScrollOffset(_scrollController));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchCubit, SearchState>(
      listener: (context, state) async {
        if (state is LoadingNextPage) {
          ScaffoldMessenger.of(context)
            ..showSnackBar(
              SnackBar(
                backgroundColor: CustomColors.secondaryColor,
                duration: Duration(days: 365),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Loading more...',
                      style: TextStyle(color: CustomColors.backgroundColor),
                    ),
                    CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          CustomColors.backgroundColor),
                    ),
                  ],
                ),
              ),
            );
        } else {
          ScaffoldMessenger.of(context)..hideCurrentSnackBar();
        }

        if (state is AddingResults) {
          WidgetsBinding.instance!.addPostFrameCallback((_) =>
              _listKey.currentState?.insertItem(state.games.length,
                  duration: Duration(milliseconds: 500)));
        }
      },
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerTop,
              floatingActionButton: state.isButtonDisplayed
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: _scrollToTop,
                        child: Icon(Icons.arrow_upward_rounded),
                        foregroundColor: CustomColors.backgroundColor,
                        backgroundColor: CustomColors.secondaryColor,
                        elevation: 4.0,
                      ),
                    )
                  : null,
              backgroundColor: CustomColors.darkerBackgroundColor,
              body: SafeArea(
                child: state.maybeMap(
                  initial: (_) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SearchField(
                      onSubmitted: (term) =>
                          context.read<SearchCubit>().searchForGames(term),
                    ),
                  ),
                  searching: (_) => Center(
                      child: SizedBox(
                    height: 128,
                    width: 128,
                    child: CircularProgressIndicator(
                      strokeWidth: 8,
                      valueColor:
                          AlwaysStoppedAnimation(CustomColors.secondaryColor),
                    ),
                  )),
                  orElse: () => NotificationListener(
                    onNotification: (notification) {
                      if (notification is OverscrollIndicatorNotification) {
                        notification.disallowGlow();
                      }

                      if (notification is ScrollEndNotification &&
                          _scrollController.position.extentAfter == 0 &&
                          state is Results) {
                        print(state);
                        context.read<SearchCubit>().getNextPage();
                      }

                      return false;
                    },
                    child: AnimatedList(
                      controller: _scrollController,
                      key: _listKey,
                      padding: EdgeInsets.all(6.0),
                      initialItemCount:
                          (state is Results ? state.games.length : 0) + 1,
                      itemBuilder: (context, index, animation) =>
                          SlideTransition(
                        position: CurvedAnimation(
                          curve: Curves.easeOut,
                          parent: animation,
                        ).drive((Tween<Offset>(
                          begin: Offset(0, 5),
                          end: Offset(0, 0),
                        ))),
                        child: _getListItem(context, index, state.games),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getListItem(BuildContext context, int index, List<Game> list) {
    if (index == 0) {
      return SearchField(
        onSubmitted: (term) => term.trim().isNotEmpty
            ? context.read<SearchCubit>().searchForGames(term)
            : context.read<SearchCubit>().getPopular(),
      );
    }

    return GameListItem(
      game: list[index - 1],
      isFromList: true,
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }
}
