import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/search/search_cubit.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/game_details_screen.dart';
import 'package:gametracker/widgets/game_list_item.dart';
import 'package:gametracker/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  final SearchCubit _searchCubit = SearchCubit();

  @override
  void initState() {
    _scrollController
        .addListener(() => _searchCubit.checkScrollOffset(_scrollController));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _searchCubit..searchForGames('Witcher'),
      child: BlocListener<SearchCubit, SearchState>(
        listener: (context, state) async {
          if (state is Results) {
            if (state.isLoadingNext) {
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

              if (state.isNewAdded) {
                WidgetsBinding.instance!.addPostFrameCallback((_) =>
                    _listKey.currentState?.insertItem(state.games.length,
                        duration: Duration(milliseconds: 500)));
              }
            }
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
                bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: CustomColors.backgroundColor,
                    selectedItemColor: CustomColors.secondaryColor,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.sports_esports),
                        label: 'Games',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      )
                    ],
                  ),
                ),
                body: SafeArea(
                  child: state.map(
                    searching: (currentState) => Center(
                        child: SizedBox(
                      height: 128,
                      width: 128,
                      child: CircularProgressIndicator(
                        strokeWidth: 8,
                        valueColor:
                            AlwaysStoppedAnimation(CustomColors.secondaryColor),
                      ),
                    )),
                    results: (currentState) => NotificationListener(
                      onNotification: (notification) {
                        if (notification is OverscrollIndicatorNotification) {
                          notification.disallowGlow();
                        }

                        if (notification is ScrollEndNotification &&
                            _scrollController.position.extentAfter == 0 &&
                            state is Results) {
                          context.read<SearchCubit>().getNextPage();
                        }

                        return false;
                      },
                      child: AnimatedList(
                        controller: _scrollController,
                        key: _listKey,
                        padding: EdgeInsets.all(6.0),
                        initialItemCount: 1,
                        itemBuilder: (context, index, animation) =>
                            SlideTransition(
                          position: CurvedAnimation(
                            curve: Curves.easeOut,
                            parent: animation,
                          ).drive((Tween<Offset>(
                            begin: Offset(0, 5),
                            end: Offset(0, 0),
                          ))),
                          child:
                              _getListItem(context, index, currentState.games),
                        ),
                      ),
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

  Widget _getListItem(BuildContext context, int index, List<Game> list) {
    if (index == 0) {
      return SearchField(
        onSubmitted: (term) => context.read<SearchCubit>().searchForGames(term),
      );
    }

    return GameListItem(
      game: list[index - 1],
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GameDetailsScreen(
            game: list[index - 1],
          ),
        ),
      ),
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }
}
